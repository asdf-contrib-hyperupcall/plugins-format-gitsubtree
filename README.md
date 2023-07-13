<div align="center">

# asdf-krab ![Build](https://github.com/ohkrab/asdf-krab/workflows/Build/badge.svg) ![Lint](https://github.com/ohkrab/asdf-krab/workflows/Lint/badge.svg)

[krab](https://ohkrab.dev) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

# Contents

- [Dependencies](#dependencies)
- [Install](#install)
- [Why?](#why)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

- `bash`, `curl`, `tar`, `uname`: generic POSIX utilities.

# Install

Plugin:

```shell
asdf plugin add krab
# or
asdf plugin add krab https://github.com/ohkrab/asdf-krab.git
# or
asdf plugin add krab git@github.com:ohkrab/asdf-krab.git
```

krab:

```shell
# Show all installable versions
asdf list-all krab

# Install specific version
asdf install krab latest

# Set a version globally (on your ~/.tool-versions file)
asdf global krab latest

# Now krab commands are available
krab --version
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/ohkrab/asdf-krab/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Bartłomiej Wójtowicz](https://github.com/qbart/)
