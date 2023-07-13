<div align="center">

# asdf-devspace ![Build](https://github.com/NeoHsu/asdf-devspace/workflows/Build/badge.svg) ![Lint](https://github.com/NeoHsu/asdf-devspace/workflows/Lint/badge.svg)

[devspace](https://devspace.sh/cli/docs/introduction) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

# Build History

[![Build history](https://buildstats.info/github/chart/NeoHsu/asdf-devspace?branch=master)](https://github.com/NeoHsu/asdf-devspace/actions)

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
asdf plugin add devspace
# or
asdf plugin add devspace https://github.com/NeoHsu/asdf-devspace.git
```

devspace:

```shell
# Show all installable versions
asdf list-all devspace

# Install specific version
asdf install devspace latest

# Set a version globally (on your ~/.tool-versions file)
asdf global devspace latest

# Now devspace commands are available
devspace --version
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/NeoHsu/asdf-devspace/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Neo Hsu](https://github.com/NeoHsu/)
