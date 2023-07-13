#!/usr/bin/env bash

set -euo pipefail

TOOL_NAME="kubectl-convert"
TOOL_TEST="kubectl-convert --help"

fail() {
  echo -e "asdf-${TOOL_NAME}: $*" >&2
  exit 1
}

curl_opts=(-fsSL)

sort_versions() {
  sed 'h; s/[+-]/./g; s/.p\([[:digit:]]\)/.z\1/; s/$/.z/; G; s/\n/ /' |
    LC_ALL=C sort -t. -k 1,1 -k 2,2n -k 3,3n -k 4,4n -k 5,5n | awk '{print $2}'
}

list_all_versions() {
  git -c 'versionsort.suffix=' ls-remote --refs --tags --sort='v:refname' https://github.com/kubernetes/kubernetes.git |
    grep -o 'refs/tags/.*' |
    cut -d/ -f3- |
    sed -e 's/^v//' |
    awk 'f; /1.21/{f=1}' # kubectl-convert was introduced as separate binary in v1.21
}

get_platform() {
  local platform
  platform="$(uname -s | tr '[:upper:]' '[:lower:]')"

  case "$platform" in
    "linux") ;;
    "darwin") ;;
    *) fail "Platform $platform not supported" ;;
  esac
  echo "$platform"
}

get_arch() {
  local arch
  arch=${ASDF_KUBECTL_OVERWRITE_ARCH:-"$(uname -m)"}
  case "$arch" in
    "x86_64") arch="amd64" ;;
    "powerpc64le" | "ppc64le") arch="ppc64le" ;;
    "aarch64" | "arm64") arch="arm64" ;;
    "armv7l") arch="arm" ;;
    *) fail "Arch $arch is not supported for kubectl-convert" ;;
  esac
  echo "$arch"
}

download_release() {
  local version
  local filename
  local platform
  local arch
  local url

  version="$1"
  filename="$2"
  platform="$(get_platform)"
  arch="$(get_arch)"

  url="https://dl.k8s.io/release/v${version}/bin/${platform}/${arch}/kubectl-convert"
  echo "* Downloading ${TOOL_NAME} release ${version}..."
  curl "${curl_opts[@]}" -o "$filename" -C - "$url" || fail "Could not download ${url}"
}

install_version() {
  local install_type
  local version
  local install_path

  install_type="$1"
  version="$2"
  install_path="${3%/bin}/bin"

  if [ "$install_type" != "version" ]; then
    fail "asdf-${TOOL_NAME} supports release installs only"
  fi

  ( 
    mkdir -p "$install_path"
    install -m 755 "${ASDF_DOWNLOAD_PATH}/kubectl-convert" "$install_path" || fail "Installation failed"
    echo "$TOOL_NAME $version installation was successful!"
  ) || (
    rm -rf "$install_path"
    fail "An error occurred while installing $TOOL_NAME $version."
  )
}
