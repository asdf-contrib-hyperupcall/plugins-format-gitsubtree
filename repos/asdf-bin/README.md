<div align="center">

# asdf-bin [![Build](https://github.com/joe733/asdf-bin/actions/workflows/build.yml/badge.svg)](https://github.com/joe733/asdf-bin/actions/workflows/build.yml) [![Lint](https://github.com/joe733/asdf-bin/actions/workflows/lint.yml/badge.svg)](https://github.com/joe733/asdf-bin/actions/workflows/lint.yml)

[bin](https://github.com/marcosnils/bin) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

# Contents

- [Dependencies](#dependencies)
- [Install](#install)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

- `bash`, `curl`: generic POSIX utilities.

# Install

Plugin:

```shell
asdf plugin add bin
# or
asdf plugin add bin https://github.com/joe733/asdf-bin.git
```

bin:

```shell
# Show all installable versions
asdf list-all bin

# Install specific version
asdf install bin latest

# Set a version globally (on your ~/.tool-versions file)
asdf global bin latest

# Now bin commands are available
bin --version
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/joe733/asdf-bin/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Jovial Joe Jayarson](https://github.com/joe733/)
