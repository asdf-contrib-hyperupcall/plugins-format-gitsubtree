<div align="center">

# asdf-nfpm [![Build](https://github.com/ORCID/asdf-nfpm/actions/workflows/build.yml/badge.svg)](https://github.com/ORCID/asdf-nfpm/actions/workflows/build.yml) [![Lint](https://github.com/ORCID/asdf-nfpm/actions/workflows/lint.yml/badge.svg)](https://github.com/ORCID/asdf-nfpm/actions/workflows/lint.yml)


[nfpm](https://github.com/goreleaser/nfpm) plugin for the [asdf version manager](https://asdf-vm.com).

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
asdf plugin add nfpm https://github.com/ORCID/asdf-nfpm.git
```

nfpm:

```shell
# Show all installable versions
asdf list-all nfpm

# Install specific version
asdf install nfpm latest

# Set a version globally (on your ~/.tool-versions file)
asdf global nfpm latest

# Now nfpm commands are available
nfpm --version
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

