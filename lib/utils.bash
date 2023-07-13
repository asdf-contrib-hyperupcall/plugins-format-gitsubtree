#!/usr/bin/env bash

set -euo pipefail

GH_REPO="https://github.com/sigoden/upt"
TOOL_NAME="upt"
TOOL_TEST="upt"

fail() {
  echo -e "asdf-$TOOL_NAME: $*"
  exit 1
}

curl_opts=(-fsSL)

if [ -n "${GITHUB_API_TOKEN:-}" ]; then
  curl_opts=("${curl_opts[@]}" -H "Authorization: token $GITHUB_API_TOKEN")
fi

list_all_versions() {
  list_github_tags
}

list_github_tags() {
  git ls-remote --tags --refs "$GH_REPO" |
    grep -o 'refs/tags/.*' | cut -d/ -f3- |
    sed 's/^v//'
}

sort_versions() {
  sed 'h; s/[+-]/./g; s/.p\([[:digit:]]\)/.z\1/; s/$/.z/; G; s/\n/ /' |
    LC_ALL=C sort -t. -k 1,1 -k 2,2n -k 3,3n -k 4,4n -k 5,5n | awk '{print $2}'
}

download_release() {
  local version filename url
  version="$1"
  filename="$2"

  local platform_test=$(uname | tr '[:upper:]' '[:lower:]')

  local arch=$(uname -m | tr '[:upper:]' '[:lower:]')

  if [[ "$platform_test" = darwin ]]; then
    platform="apple-darwin"
  elif [[ "$platform_test" = linux ]]; then
    platform="unknown-linux-gnu"
  else
    platform="pc-windows-msvc.exe"
  fi

  if detect_musl; then
    platform="linux-musl"
  fi

  url="$GH_REPO/releases/download/v${version}/upt-${arch}-${platform}"

  echo "* Downloading $TOOL_NAME release $version..."
  curl "${curl_opts[@]}" -o "$filename" -C - "$url" || fail "Could not download $url"
}

detect_musl() {
  # Detect Musl C library.
  libc=$(ldd /bin/ls | grep 'musl' | head -1 | cut -d ' ' -f1)
  if [ -z $libc ]; then
    # This is not Musl.
    return 1
  else
    return 0
  fi
}

install_version() {
  local install_type="$1"
  local version="$2"
  local install_path="$3/bin"

  if [ "$install_type" != "version" ]; then
    fail "asdf-$TOOL_NAME supports release installs only"
  fi

  (
    local tool_cmd
    tool_cmd="$(echo "$TOOL_TEST" | cut -d' ' -f1)"

    mkdir -p "$install_path"
    cp -r "$ASDF_DOWNLOAD_PATH"/$tool_cmd "$install_path"

    chmod +x "$install_path/$tool_cmd"
    test -x "$install_path/$tool_cmd" || fail "Expected $install_path/$tool_cmd to be executable."

    echo "$TOOL_NAME $version installation was successful in $install_path!"
  ) || (
    rm -rf "$install_path"
    fail "An error ocurred while installing $TOOL_NAME $version."
  )
}
