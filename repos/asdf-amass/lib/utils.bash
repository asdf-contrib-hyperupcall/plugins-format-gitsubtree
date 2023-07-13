#!/usr/bin/env bash

set -euo pipefail

GH_REPO="https://github.com/OWASP/Amass"
TOOL_NAME="amass"
TOOL_TEST="amass -help"

fail() {
  echo -e "asdf-$TOOL_NAME: $*"
  exit 1
}

curl_opts=(-fsSL)

# NOTE: You might want to remove this if amass is not hosted on GitHub releases.
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
  # List the tag names from GitHub releases.
  local tags=$(list_github_tags)
  echo "$tags"
}

get_arch() {
  local arch=""

  case "$(uname -m)" in
  x86_64 | amd64) arch="amd64" ;;
  i686 | i386) arch="i386" ;;
  armv6l | armv7l) arch="arm" ;;
  aarch64 | arm64) arch="arm64" ;;
  *)
    fail "Arch '$(uname -m)' not supported!"
    ;;
  esac

  echo -n $arch
}

get_platform() {
  local platform=""

  case "$(uname | tr '[:upper:]' '[:lower:]')" in
  darwin) platform="macos" ;;
  linux) platform="linux" ;;
  windows) platform="windows" ;;
  freebsd) platform="freebsd" ;;
  *)
    fail "Platform '$(uname -m)' not supported!"
    ;;
  esac

  echo -n $platform
}

download_release() {
  local version="$1"
  local version_path="${version//extended_/}"
  local filename="$2"
  local platform=$(get_platform)
  local arch=$(get_arch)
  local major_version=$(echo "$version" | awk -F. '{print $1}')
  local minor_version=$(echo "$version" | awk -F. '{print $2}')

  local url="${GH_REPO}/releases/download/v${version_path}/amass_${platform}_${arch}.zip"

  echo "* Downloading $TOOL_NAME release $version..."
  curl "${curl_opts[@]}" -o "$filename" -C - "$url" || fail "Could not download $url"
}

install_version() {
  local install_type="$1"
  local version="$2"
  local install_path="${3%/bin}/bin"

  if [ "$install_type" != "version" ]; then
    fail "asdf-$TOOL_NAME supports release installs only"
  fi

  (
    mkdir -p "$install_path"
    cp -r "$ASDF_DOWNLOAD_PATH"/* "$install_path"

    # Assert amass executable exists.
    local tool_cmd
    tool_cmd="$(echo "$TOOL_TEST" | cut -d' ' -f1)"
    test -x "$install_path/$tool_cmd" || fail "Expected $install_path/$tool_cmd to be executable."

    echo "$TOOL_NAME $version installation was successful!"
  ) || (
    rm -rf "$install_path"
    fail "An error occurred while installing $TOOL_NAME $version."
  )
}
