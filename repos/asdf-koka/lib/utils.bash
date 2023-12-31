#!/usr/bin/env bash

set -euo pipefail

GH_REPO="https://github.com/koka-lang/koka"
TOOL_NAME="koka"
TOOL_TEST="koka --version"

fail() {
	echo -e "asdf-$TOOL_NAME: $*"
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
		grep -o -E 'refs/tags/v[0-9.]*$' | cut -d/ -f3- |
		sed 's/^v//'
}

list_all_versions() {
	list_github_tags
}

download_release() {
	local version filename
	version="$1"
	filename="$2"

	echo "* Downloading $TOOL_NAME release $version..."

	git clone --depth 1 --recursive -b "v$version" "$GH_REPO" "$filename" || fail "Could not download $GH_REPO"
	chmod -R u+w "$filename"
}

install_version() {
	local install_type="$1"
	local version="$2"
	local install_path="$3"

	if [ "$install_type" != "version" ]; then
		fail "asdf-$TOOL_NAME supports release installs only"
	fi

	(
		mkdir -p "$install_path/bin"
		mkdir -p "$install_path/share/koka/v$version"
		cd "$ASDF_DOWNLOAD_PATH"
		stack update
		stack build
		cp -r samples support "$install_path/"
		cp -r kklib lib "$install_path/share/koka/v$version/"
		stack install --local-bin-path "$install_path/bin"

		local tool_cmd
		tool_cmd="$(echo "$TOOL_TEST" | cut -d' ' -f1)"
		test -x "$install_path/bin/$tool_cmd" || fail "Expected $install_path/bin/$tool_cmd to be executable."

		echo "$TOOL_NAME $version installation was successful!"
	) || (
		rm -rf "$install_path"
		fail "An error occurred while installing $TOOL_NAME $version."
	)
}
