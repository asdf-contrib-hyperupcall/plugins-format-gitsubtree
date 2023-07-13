#!/usr/bin/env bash

GITHUB_REPO="https://github.com/lucydsl/liblucy"

cmd="curl -s"
if [ -n "${GITHUB_API_TOKEN:-}" ]; then
 cmd="$cmd -H 'Authorization: token $GITHUB_API_TOKEN'"
fi

sort_versions() {
  sed 'h; s/[+-]/./g; s/.p\([[:digit:]]\)/.z\1/; s/$/.z/; G; s/\n/ /' |
    LC_ALL=C sort -t. -k 1,1 -k 2,2n -k 3,3n -k 4,4n -k 5,5n | awk '{print $2}'
}

list_github_tags() {
  git ls-remote --tags --refs "$GITHUB_REPO" |
    grep -o 'refs/tags/.*' | cut -d/ -f3- |
    sed 's/^v//' # NOTE: You might want to adapt this sed to remove non-version strings from tags
}

get_platform() {
  case "$OSTYPE" in
    darwin*) echo -n "mac" ;;
    linux*) echo -n "linux" ;;
    *) fail "Unsupported platform" ;;
  esac
}

get_bin_url() {
  local version=$1
  local platform=$2

  local url="$GITHUB_REPO/releases/download/v$version/$platform.tar.gz"

  echo -n "$url"
}

get_source_url() {
  local version=$1

  echo -n "$GITHUB_REPO/archive/v$version.zip"
}

get_temp_dir() {
  local tmpdir
  tmpdir="$(mktemp -d asdf-lucy.XXXX)"

  echo -n "$tmpdir"
}

fail() {
  echo -e "\e[31mFail:\e[m $*"
  exit 1
}
