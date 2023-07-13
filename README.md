<div align="center">

# asdf-cidr-merger [![Build](https://github.com/ORCID/asdf-cidr-merger/actions/workflows/build.yml/badge.svg)](https://github.com/ORCID/asdf-cidr-merger/actions/workflows/build.yml) [![Lint](https://github.com/ORCID/asdf-cidr-merger/actions/workflows/lint.yml/badge.svg)](https://github.com/ORCID/asdf-cidr-merger/actions/workflows/lint.yml)


[cidr-merger](https://github.com/goreleaser/cidr-merger) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

# Contents

- [Dependencies](#dependencies)
- [Install](#install)
- [Why?](#why)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

- `bash`, `curl`, `tar`: generic POSIX utilities.

# Install

Plugin:

```shell
asdf plugin add cidr-merger https://github.com/ORCID/asdf-cidr-merger.git
```

cidr-merger:

```shell
# Show all installable versions
asdf list-all cidr-merger

# Install specific version
asdf install cidr-merger latest

# Set a version globally (on your ~/.tool-versions file)
asdf global cidr-merger latest

# Now cidr-merger commands are available
cidr-merger --version
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

