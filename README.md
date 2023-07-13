<div align="center">

# asdf-mutanus [![Build](https://github.com/soriur/asdf-mutanus/actions/workflows/build.yml/badge.svg)](https://github.com/soriur/asdf-mutanus/actions/workflows/build.yml) [![Lint](https://github.com/soriur/asdf-mutanus/actions/workflows/lint.yml/badge.svg)](https://github.com/soriur/asdf-mutanus/actions/workflows/lint.yml)


[mutanus](https://github.com/soriur/mutanus) plugin for the [asdf version manager](https://asdf-vm.com).

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
asdf plugin add mutanus
# or
asdf plugin add mutanus https://github.com/soriur/asdf-mutanus.git
```

mutanus:

```shell
# Show all installable versions
asdf list-all mutanus

# Install specific version
asdf install mutanus latest

# Set a version globally (on your ~/.tool-versions file)
asdf global mutanus latest

# Now mutanus commands are available
mutanus --help
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/soriur/asdf-mutanus/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Iurii Sorokin](https://github.com/soriur/)
