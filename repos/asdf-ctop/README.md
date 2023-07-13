<div align="center">

# asdf-ctop [![Build](https://github.com/neohsu/asdf-ctop/actions/workflows/build.yml/badge.svg)](https://github.com/neohsu/asdf-ctop/actions/workflows/build.yml) [![Lint](https://github.com/neohsu/asdf-ctop/actions/workflows/lint.yml/badge.svg)](https://github.com/neohsu/asdf-ctop/actions/workflows/lint.yml)


[ctop](<TOOL HOMEPAGE>) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

# Build History

[![Build history](https://buildstats.info/github/chart/NeoHsu/asdf-ctop?branch=main)](https://github.com/NeoHsu/asdf-ctop/actions)

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
asdf plugin add ctop
# or
asdf plugin add ctop https://github.com/neohsu/asdf-ctop.git
```

ctop:

```shell
# Show all installable versions
asdf list-all ctop

# Install specific version
asdf install ctop latest

# Set a version globally (on your ~/.tool-versions file)
asdf global ctop latest

# Now ctop commands are available
ctop --help
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/neohsu/asdf-ctop/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Neo Hsu](https://github.com/neohsu/)
