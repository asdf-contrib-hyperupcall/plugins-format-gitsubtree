#!/usr/bin/env bash
set -euo pipefail

# TODO: Ensure this is the correct GitHub homepage where releases can be downloaded for ki.
GH_REPO="https://github.com/Kotlin/kotlin-interactive-shell"
DOWNLOAD_BASE_URL="https://repo1.maven.org/maven2/org/jetbrains/kotlinx/ki-shell"
TOOL_NAME="ki"
TOOL_TEST="echo ':q' | ./bin/ki.sh -v 2> /dev/null | head -1"

fail() {
  echo -e "asdf-$TOOL_NAME: $*"
  exit 1
}

curl_opts=(-fsSL)

sort_versions() {
  sed 'h; s/[+-]/./g; s/.p\([[:digit:]]\)/.z\1/; s/$/.z/; G; s/\n/ /' |
    LC_ALL=C sort -t. -k 1,1 -k 2,2n -k 3,3n -k 4,4n -k 5,5n | awk '{print $2}'
}

list_all_versions() {
  curl "${curl_opts[@]}" "${DOWNLOAD_BASE_URL}/maven-metadata.xml" 2>/dev/null | grep 'version>' | sed -e 's,.*<version>\([^<]*\)</version>.*,\1,g'
}

download_release() {
  local version filename url
  version="$1"
  filename="$2"

  url="$DOWNLOAD_BASE_URL/${version}/ki-shell-${version}-archive.zip"

  echo "* Downloading $TOOL_NAME release $version..."
  curl "${curl_opts[@]}" -o "$filename" -C - "$url" || fail "Could not download $url"
  curl "${curl_opts[@]}" -o "${filename}.sha1" -C - "${url}.sha1" || fail "Could not download $url"
}

install_version() {
  local install_type="$1"
  local version="$2"
  local install_path="$3"

  if [ "$install_type" != "version" ]; then
    fail "asdf-$TOOL_NAME supports release installs only"
  fi

  local release_file="$install_path/$TOOL_NAME-$version.zip"
  (
    mkdir -p "$install_path"
    download_release "$version" "$release_file"
    cd "$install_path" && unzip "$release_file" && mv ki/bin . && mv ki/lib . && chmod u+x ./bin/ki.sh || fail "Could not extract $release_file"
    rm "$release_file"

    local tool_cmd
    tool_cmd="ki.sh"
    test -x "$install_path/bin/$tool_cmd" || fail "Expected $install_path/bin/$tool_cmd to be executable."

    echo "$TOOL_NAME $version installation was successful!"
  ) || (
    rm -rvf "$install_path"
    fail "An error ocurred while installing $TOOL_NAME $version."
  )
}
