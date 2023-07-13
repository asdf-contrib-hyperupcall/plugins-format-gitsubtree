<div align="center">

# asdf-dome ![Build](https://github.com/jtakakura/asdf-dome/workflows/Build/badge.svg) ![Lint](https://github.com/jtakakura/asdf-dome/workflows/Lint/badge.svg)

[dome](https://domeengine.com) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

# Contents

- [Dependencies](#dependencies)
- [Install](#install)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

- Make sure you have the required dependencies installed:
  - curl
  - unzip

# Install

Plugin:

```shell
asdf plugin add dome
# or
asdf plugin add https://github.com/jtakakura/asdf-dome.git
```

dome:

```shell
# Show all installable versions
asdf list-all dome

# Install specific version
asdf install dome latest

# Set a version globally (on your ~/.tool-versions file)
asdf global dome latest

# Now dome commands are available
dome --help
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/jtakakura/asdf-dome/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Junji Takakura](https://github.com/jtakakura/)
