<div align="center">

# asdf-regctl [![Build](https://github.com/ORCID/asdf-regctl/actions/workflows/build.yml/badge.svg)](https://github.com/ORCID/asdf-regctl/actions/workflows/build.yml) [![Lint](https://github.com/ORCID/asdf-regctl/actions/workflows/lint.yml/badge.svg)](https://github.com/ORCID/asdf-regctl/actions/workflows/lint.yml)


[regctl](https://github.com/regclient/regclient) plugin for the [asdf version manager](https://asdf-vm.com).

</div>


# Contents

- [Dependencies](#dependencies)
- [Install](#install)
- [Why?](#why)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

- `bash`, `curl`: generic POSIX utilities.

# Install

Plugin:

```shell
asdf plugin add regctl https://github.com/ORCID/asdf-regctl.git
```

regctl:

```shell
# Show all installable versions
asdf list-all regctl

# Install specific version
asdf install regctl latest

# Set a version globally (on your ~/.tool-versions file)
asdf global regctl latest

# Now regctl commands are available
regctl --version
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

