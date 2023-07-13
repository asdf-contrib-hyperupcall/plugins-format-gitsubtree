<div align="center">

# asdf-btm [![Build](https://github.com/carbonteq/asdf-btm/actions/workflows/build.yml/badge.svg)](https://github.com/carbonteq/asdf-btm/actions/workflows/build.yml) [![Lint](https://github.com/carbonteq/asdf-btm/actions/workflows/lint.yml/badge.svg)](https://github.com/carbonteq/asdf-btm/actions/workflows/lint.yml)

[bottom (btm)](https://github.com/ClementTsang/bottom) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

# Contents

- [Dependencies](#dependencies)
- [Install](#install)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

- `bash`, `curl`, `tar`: generic POSIX utilities

# Install

Plugin:

```shell
asdf plugin add bottom

# or

asdf plugin add bottom https://github.com/carbonteq/asdf-btm.git
```

btm:

```shell
# Show all installable versions
asdf list-all bottom

# Install specific version
asdf install bottom latest

# Set a version globally (on your ~/.tool-versions file)
asdf global bottom latest

# Now btm commands are available
btm --version
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/carbonteq/asdf-btm/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Carbonteq](https://github.com/carbonteq/)
