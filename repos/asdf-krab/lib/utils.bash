#!/usr/bin/env bash

set -euo pipefail

GH_REPO="https://github.com/ohkrab/krab"
TOOL_NAME="krab"
TOOL_TEST="krab --version"

fail() {
  echo -e "asdf-$TOOL_NAME: $*"
  exit 1
}

curl_opts=(-fsSL)

# NOTE: You might want to remove this if krab is not hosted on GitHub releases.
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
    sed 's/^v//' # NOTE: You might want to adapt this sed to remove non-version strings from tags
}

list_all_versions() {
  list_github_tags
}

download_release() {
  local version filename url
  version="$1"
  filename="$2"

  local -r platform="$(get_platform)"
  local -r arch="$(get_arch)"
  url="$GH_REPO/releases/download/v${version}/krab_${version}_${platform}_${arch}.tar.gz"

  echo "* Downloading $TOOL_NAME release $version..."
  curl "${curl_opts[@]}" -o "$filename" -C - "$url" || fail "Could not download $url"
}

install_version() {
  local install_type="$1"
  local version="$2"
  local install_path="$3"

  # echo "Install type: $install_type, version: $version, install_path: $install_path"

  if [ "$install_type" != "version" ]; then
    fail "asdf-$TOOL_NAME supports release installs only"
  fi

  (
    local tool_cmd
    tool_cmd="$(echo "$TOOL_TEST" | cut -d' ' -f1)"

    mkdir -p "$install_path"
    # echo "cp -r $ASDF_DOWNLOAD_PATH/ $install_path"
    cp "$ASDF_DOWNLOAD_PATH"/$tool_cmd "$install_path"
    # ls -la "$ASDF_DOWNLOAD_PATH"
    # ls -la "$install_path"

    test -x "$install_path/$tool_cmd" || fail "Expected $install_path/$tool_cmd to be executable."

    echo "$TOOL_NAME $version installation was successful!"
  ) || (
    rm -rf "$install_path"
    fail "An error ocurred while installing $TOOL_NAME $version."
  )
}

get_arch() {
  local -r machine="$(uname -m)"
  if [[ $machine == "arm64" ]] || [[ $machine == "aarch64" ]]; then
    echo "arm64"
  else
    echo "amd64"
  fi
}

get_platform() {
  uname | tr '[:upper:]' '[:lower:]'
}