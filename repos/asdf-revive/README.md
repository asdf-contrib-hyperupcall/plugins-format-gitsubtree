<div align="center">

# asdf-revive [![Build](https://github.com/bjw-s/asdf-revive/actions/workflows/build.yml/badge.svg)](https://github.com/bjw-s/asdf-revive/actions/workflows/build.yml) [![Lint](https://github.com/bjw-s/asdf-revive/actions/workflows/lint.yml/badge.svg)](https://github.com/bjw-s/asdf-revive/actions/workflows/lint.yml)

[revive](https://github.com/mgechev/revive) plugin for the [asdf version manager](https://asdf-vm.com).

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
asdf plugin add revive
# or
asdf plugin add revive https://github.com/bjw-s/asdf-revive.git
```

revive:

```shell
# Show all installable versions
asdf list-all revive

# Install specific version
asdf install revive latest

# Set a version globally (on your ~/.tool-versions file)
asdf global revive latest

# Now revive commands are available
revive --version
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/bjw-s/asdf-revive/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Bernd Schorgers](https://github.com/bjw-s/)
