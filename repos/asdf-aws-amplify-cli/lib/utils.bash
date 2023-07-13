#!/usr/bin/env bash

set -euo pipefail

# TODO: Ensure this is the correct GitHub homepage where releases can be downloaded for <YOUR TOOL>.
REPO_PROVIDER="github.com"
REPO="aws-amplify/amplify-cli"
TOOL_NAME="amplify"
TOOL_TEST="${TOOL_NAME} --version"

fail() {
  echo -e "asdf-$TOOL_NAME: $*"
  exit 1
}

curl_opts=(-fSL)

sort_versions() {
  sed 'h; s/[+-]/./g; s/.p\([[:digit:]]\)/.z\1/; s/$/.z/; G; s/\n/ /' |
    LC_ALL=C sort -t. -k 1,1 -k 2,2n -k 3,3n -k 4,4n -k 5,5n | awk '{print $2}'
}

list_github_tags() {
  local GH_RELEASES_PAGE='1'
  local GH_RELEASES
  GH_RELEASES="$(curl -Ls "https://api.github.com/repos/${REPO}/releases?per_page=100&page=${GH_RELEASES_PAGE}" | awk '/tag_name/{ rc = 1; gsub(/,|"/,"") ; print $2 }; END { exit !rc }')"
  local RC="0"
  set +euo pipefail
  while [ ${RC} -eq 0 ]; do
    GH_RELEASES_PAGE=$((${GH_RELEASES_PAGE} + 1))
    GH_RELEASES="${GH_RELEASES}$(curl -Ls "https://api.github.com/repos/${REPO}/releases?per_page=100&page=${GH_RELEASES_PAGE}" | awk '/tag_name/{ rc = 1; gsub(/,|"/,"") ; print $2 }; END { exit !rc }')"
    RC="${?}"
  done
  set -euo pipefail

  echo "${GH_RELEASES}"
}

list_all_versions() {
  # TODO: Adapt this. By default we simply list the tag names from GitHub releases.
  # Change this function if <YOUR TOOL> has other means of determining installable versions.
  list_github_tags | sed 's/^v//'
}

download_release() {
  local version filename url os_name
  version="$1"
  os_name="$2"
  filename="$3"

  # TODO: Adapt the release URL convention for <YOUR TOOL>
  url="https://github.com/${REPO}/releases/download/v${version}/amplify-pkg-${os_name}.tgz"

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

    # TODO: Assert <YOUR TOOL> executable exists.
    local tool_cmd
    tool_cmd="$(echo "$TOOL_TEST" | cut -d' ' -f1)"
    test -x "$install_path/$tool_cmd" || fail "Expected $install_path/$tool_cmd to be executable."

    echo "$TOOL_NAME $version installation was successful!"
  ) || (
    rm -rf "$install_path"
    fail "An error occurred while installing $TOOL_NAME $version."
  )
}

get_os_name() {
  local os_name
  case $(uname -s) in
  Linux*)
    os_name="linux"
    ;;
  Darwin*)
    os_name="macos"
    ;;
  *)
    log_failure_and_exit "Script only supports macOS and Linux"
    ;;
  esac
  echo "${os_name}"
}
