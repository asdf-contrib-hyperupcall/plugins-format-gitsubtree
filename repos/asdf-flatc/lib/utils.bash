#!/usr/bin/env bash

set -euo pipefail

GH_REPO="https://github.com/google/flatbuffers"
TOOL_NAME="flatc"
TOOL_TEST="flatc --version"

fail() {
	echo -e "asdf-$TOOL_NAME: $*"
	exit 1
}

curl_opts=(-fsSL)

# NOTE: You might want to remove this if flatc is not hosted on GitHub releases.
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

get_download_name() {
	local os arch

	os=$(uname)
	arch=$(uname -m)

	if [[ "${os}" == "Darwin" ]]; then
		if [[ "${arch}" == "arm64" ]]; then
			echo "Mac.flatc.binary"
		else
			echo "MacIntel.flatc.binary"
		fi
	elif [[ "${os}" == "Linux" ]]; then
		echo "Linux.flatc.binary.g++-10"
	else
		echo "Unknown"
	fi
}

list_all_versions() {
	list_github_tags
}

download_release() {
	local version filename url
	version="$1"
	filename="$2"
	download_name=$(get_download_name)
	fallback_url="$GH_REPO/archive/v${version}.zip"
	url="$GH_REPO/releases/download/v${version}/${download_name}.zip"

	if [[ "${download_name}" == "Unknown" ]]; then
		url=${fallback_url}
	fi

	echo "* Downloading $TOOL_NAME release $version..."

	if ! curl "${curl_opts[@]}" -o "$filename" -C - "$url"; then
		echo "Failed to download a pre-built binary. Going to try building from source..."
		if ! curl "${curl_opts[@]}" -o "$filename" -C - "$fallback_url"; then
			fail "Could not source download from URL $fallback_url"
		fi
	fi
}

install_version() {
	local install_type="$1"
	local version="$2"
	local install_path="${3%/bin}/bin"

	if [ "$install_type" != "version" ]; then
		fail "asdf-$TOOL_NAME supports release installs only"
	fi

	(
		if [[ ! -e "${ASDF_DOWNLOAD_PATH}/flatc" ]]; then
			cd "$ASDF_DOWNLOAD_PATH"
			cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release
			make
			mkdir -p "$install_path"
			cp "./flatc" "$install_path"
		else
			cp -r "${ASDF_DOWNLOAD_PATH}" "$install_path"
		fi

		# Assert flatc executable exists.
		local tool_cmd
		tool_cmd="$(echo "$TOOL_TEST" | cut -d' ' -f1)"
		test -x "$install_path/$tool_cmd" || fail "Expected $install_path/$tool_cmd to be executable."

		echo "$TOOL_NAME $version installation was successful!"
	) || (
		rm -rf "$install_path"
		fail "An error occurred while installing $TOOL_NAME $version."
	)
}
