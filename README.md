<div align="center">

# asdf-figma-export [![Build](https://github.com/younke/asdf-figma-export/actions/workflows/build.yml/badge.svg)](https://github.com/younke/asdf-figma-export/actions/workflows/build.yml) [![Lint](https://github.com/younke/asdf-figma-export/actions/workflows/lint.yml/badge.svg)](https://github.com/younke/asdf-figma-export/actions/workflows/lint.yml)


[figma-export](https://github.com/RedMadRobot/figma-export) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

# Contents

- [Dependencies](#dependencies)
- [Install](#install)
- [Why?](#why)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

- macOS
- `bash`, `curl`, `zip`: generic POSIX utilities.

# Install

Plugin:

```shell
asdf plugin add figma-export
# or
asdf plugin add figma-export https://github.com/younke/asdf-figma-export.git
```

figma-export:

```shell
# Show all installable versions
asdf list-all figma-export

# Install specific version
asdf install figma-export latest

# Set a version globally (on your ~/.tool-versions file)
asdf global figma-export latest

# Now figma-export commands are available
figma-export --version
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/younke/asdf-figma-export/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Vasily Ptitsyn](https://github.com/younke/)
