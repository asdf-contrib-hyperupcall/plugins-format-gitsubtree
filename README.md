<div align="center">

# asdf-bombardier ![Build](https://github.com/NeoHsu/asdf-bombardier/workflows/Build/badge.svg) ![Lint](https://github.com/NeoHsu/asdf-bombardier/workflows/Lint/badge.svg)

[bombardier](https://pkg.go.dev/github.com/codesenberg/bombardier?utm_source=godoc) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

# Build History

[![Build history](https://buildstats.info/github/chart/NeoHsu/asdf-bombardier?branch=master)](https://github.com/NeoHsu/asdf-bombardier/actions)

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
asdf plugin add bombardier
# or
asdf plugin add bombardier https://github.com/NeoHsu/asdf-bombardier.git
```

bombardier:

```shell
# Show all installable versions
asdf list-all bombardier

# Install specific version
asdf install bombardier latest

# Set a version globally (on your ~/.tool-versions file)
asdf global bombardier latest

# Now bombardier commands are available
bombardier --version
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/NeoHsu/asdf-bombardier/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Neo Hsu](https://github.com/NeoHsu/)
