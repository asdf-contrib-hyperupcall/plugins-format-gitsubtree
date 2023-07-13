#!/usr/bin/env bash

set -euo pipefail

GH_REPO="https://github.com/domeengine/dome"

fail() {
  echo -e "asdf-dome: $*"
  exit 1
}

curl_opts=(-fsSL)

if [ -n "${GITHUB_API_TOKEN:-}" ]; then
  curl_opts=("${curl_opts[@]}" -H "Authorization: token $GITHUB_API_TOKEN")
fi

sort_versions() {
  sed 'h; s/[+-]/./g; s/.p\([[:digit:]]\)/.z\1/; s/$/.z/; G; s/\n/ /' |
    LC_ALL=C sort -t. -k 1,1 -k 2,2n -k 3,3n -k 4,4n -k 5,5n | awk '{print $2}'
}

list_github_tags() {
  git ls-remote --tags --refs "$GH_REPO" |
    grep -o 'refs/tags/.*' | cut -d/ -f3- |
    sed 's/^v\.\?//'
}

list_all_versions() {
  list_github_tags
}

download_release() {
  local version platform arch filename url
  platform="$1"
  arch="$2"
  version="$3"
  filename="$4"

  path="$(echo $GH_REPO | sed -E 's|https://github.com/||')"
  url=$(curl -s "https://api.github.com/repos/${path}/releases" | grep -m1 "http.*${version}-${platform}-${arch}.zip" | sed -E 's/.*"([^"]+)".*/\1/')

  echo "* Downloading dome release $version..."
  curl "${curl_opts[@]}" -o "$filename" -C - "$url" || fail "Could not download $url"
}

install_version() {
  local install_type="$1"
  local version="$2"
  local install_path="$3"

  if [ "$install_type" != "version" ]; then
    fail "asdf-dome supports release installs only"
  fi

  local platform

  case "$OSTYPE" in
    darwin*) platform="macosx" ;;
    linux*) platform="linux" ;;
    *) fail "Unsupported platform" ;;
  esac

  local arch

  case "$(uname -m)" in
    x86_64*) arch="x64" ;;
    *) fail "Unsupported architecture" ;;
  esac

  local release_file="$install_path/dome-${version}-${platform}-${arch}.zip"
  (
    mkdir -p "$install_path/bin"
    download_release "$platform" "$arch" "$version" "$release_file"
    unzip -j "$release_file" -d "$install_path/bin" || fail "Could not extract $release_file"
    rm "$release_file"

    test -x "$install_path/bin/dome" || chmod +x "$install_path/bin/dome"

    echo "dome $version installation was successful!"
  ) || (
    rm -rf "$install_path"
    fail "An error ocurred while installing dome $version."
  )
}
