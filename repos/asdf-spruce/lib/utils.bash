#!/usr/bin/env bash

set -euo pipefail

GH_REPO="https://github.com/geofffranks/spruce"
TOOL_NAME="spruce"
TOOL_TEST="--version"

fail() {
  echo -e "asdf-$TOOL_NAME: $*"
  exit 1
}

curl_opts=(-fsSL)

# NOTE: You might want to remove this if spruce is not hosted on GitHub releases.
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
  platform="$(uname | tr '[:upper:]' '[:lower:]')"

  # Adapt the release URL convention for spruce
  # https://github.com/geofffranks/spruce/releases/download/v1.27.0/spruce-darwin-amd64
  url="$GH_REPO/releases/download/v${version}/${TOOL_NAME}-${platform}-amd64"

  echo "* Downloading $TOOL_NAME release $version..."
  curl "${curl_opts[@]}" -o "$filename" -C - "$url" || fail "Could not download $url"
  chmod a+x "$filename"
}

install_version() {
  local install_type="$1"
  local version="$2"
  local install_path="$3"

  if [ "$install_type" != "version" ]; then
    fail "asdf-$TOOL_NAME supports release installs only"
  fi

  (
    mkdir -p "$install_path"/bin
    cp -pr "$ASDF_DOWNLOAD_PATH"/* "$install_path"/bin/

    test -x "$install_path/bin/$TOOL_NAME" || fail "Expected $install_path/bin/$TOOL_NAME to be executable."
    tool_version=$("$install_path"/bin/$TOOL_NAME $TOOL_TEST) && test "${tool_version##*\ }" = "$version" || fail "Expected $install_path/bin/$TOOL_NAME to be version $version but got ${tool_version##*\ }."

    echo "$TOOL_NAME $version installation was successful!"
  ) || (
    rm -rf "$install_path"
    fail "An error ocurred while installing $TOOL_NAME $version."
  )
}
