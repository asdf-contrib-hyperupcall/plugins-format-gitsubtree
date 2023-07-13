#!/usr/bin/env bash

set -euo pipefail

export GH_REPO="https://github.com/segmentio/chamber"
export TOOL_NAME="chamber"
export TOOL_TEST="chamber version"

fail() {
  echo -e "asdf-$TOOL_NAME: $*"
  exit 1
}
