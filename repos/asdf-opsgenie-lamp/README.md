<div align="center">

# asdf-opsgenie-lamp [![Build](https://github.com/ORCID/asdf-opsgenie-lamp/actions/workflows/build.yml/badge.svg)](https://github.com/ORCID/asdf-opsgenie-lamp/actions/workflows/build.yml) [![Lint](https://github.com/ORCID/asdf-opsgenie-lamp/actions/workflows/lint.yml/badge.svg)](https://github.com/ORCID/asdf-opsgenie-lamp/actions/workflows/lint.yml)


[opsgenie-lamp](https://github.com/opsgenie/opsgenie-lamp) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

# Contents

- [Dependencies](#dependencies)
- [Install](#install)
- [Why?](#why)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

- `bash`, `curl`, `unzip`: generic POSIX utilities.

# Install

Plugin:

```shell
asdf plugin add opsgenie-lamp https://github.com/ORCID/asdf-opsgenie-lamp.git
```

opsgenie-lamp:

```shell
# Show all installable versions
asdf list-all opsgenie-lamp

# Install specific version
asdf install opsgenie-lamp latest

# Set a version globally (on your ~/.tool-versions file)
asdf global opsgenie-lamp latest

# Now opsgenie-lamp commands are available
opsgenie-lamp --version
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

