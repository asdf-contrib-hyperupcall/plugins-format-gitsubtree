#!/usr/bin/env bash

exec find . -not -path "./.direnv/*" -not -path "./.git/*" -type f -executable | xargs -n 1 shfmt -w -i 2 -ci -bn -sr
