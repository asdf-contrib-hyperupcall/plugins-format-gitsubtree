# asdf-agebox

[![Build Status](https://github.com/slok/asdf-agebox/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/slok/asdf-agebox/actions/workflows/ci.yml)

[Agebox](https://github.com/slok/agebox) plugin for the [asdf](https://github.com/asdf-vm/asdf) version manager.
Check out the [asdf](https://github.com/asdf-vm/asdf) readme for instructions.

## Install

```shell
asdf plugin add agebox
# or
asdf plugin add agebox https://github.com/slok/asdf-agebox.git
```

## Usage

```shell
# Show all installable versions
asdf list-all agebox

# Install specific version
asdf install agebox latest

# Set a version globally (on your ~/.tool-versions file)
asdf global agebox latest

# Now agebox commands are available
agebox
```

## Development

- Make local changes.
- Git commit local changes.
- Add the plugin pointing to development FS path: `asdf plugin remove agebox && asdf plugin-add agebox ${PWD}`.
