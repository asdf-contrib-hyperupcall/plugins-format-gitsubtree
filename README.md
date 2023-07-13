<div align="center">

# asdf-tfswitch [![Build](https://github.com/iul1an/asdf-tfswitch/actions/workflows/build.yml/badge.svg)](https://github.com/iul1an/asdf-tfswitch/actions/workflows/build.yml) [![Lint](https://github.com/iul1an/asdf-tfswitch/actions/workflows/lint.yml/badge.svg)](https://github.com/iul1an/asdf-tfswitch/actions/workflows/lint.yml)


[tfswitch](https://tfswitch.warrensbox.com/) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

# Contents
- [Compatibility](#compatibility)
- [Install](#install)
- [Contributing](#contributing)
- [License](#license)

# Compatibility
This plugin works with Linux and MacOS, both amd64 and arm64 CPU architecture.

# Install

Plugin:

```shell
asdf plugin add tfswitch
# or
asdf plugin add tfswitch https://github.com/iul1an/asdf-tfswitch.git
```

tfswitch:

```shell
# Show all installable versions
asdf list-all tfswitch

# Install specific version
asdf install tfswitch latest

# Set a version globally (on your ~/.tool-versions file)
asdf global tfswitch latest

# Now tfswitch commands are available
tfswitch --help
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/iul1an/asdf-tfswitch/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Iulian Mandache](https://github.com/iul1an/)
