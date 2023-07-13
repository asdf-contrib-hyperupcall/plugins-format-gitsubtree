<div align="center">

# asdf-velad [![Build](https://github.com/pdemagny/asdf-velad/actions/workflows/build.yml/badge.svg)](https://github.com/pdemagny/asdf-velad/actions/workflows/build.yml) [![Lint](https://github.com/pdemagny/asdf-velad/actions/workflows/lint.yml/badge.svg)](https://github.com/pdemagny/asdf-velad/actions/workflows/lint.yml)


[velad](https://kubevela.io/docs/installation/standalone) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

# Contents

- [Dependencies](#dependencies)
- [Install](#install)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

- `bash`, `curl`, `tar`: generic POSIX utilities.

# Install

Plugin:

```shell
asdf plugin add velad
# or
asdf plugin add velad https://github.com/pdemagny/asdf-velad.git
```

velad:

```shell
# Show all installable versions
asdf list-all velad

# Install specific version
asdf install velad latest

# Set a version globally (on your ~/.tool-versions file)
asdf global velad latest

# Now velad commands are available
velad version
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/pdemagny/asdf-velad/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Pierre Demagny](https://github.com/pdemagny/)
