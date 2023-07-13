<div align="center">

# asdf-datree [![Build](https://github.com/lukeab/asdf-datree/actions/workflows/build.yml/badge.svg)](https://github.com/lukeab/asdf-datree/actions/workflows/build.yml) [![Lint](https://github.com/lukeab/asdf-datree/actions/workflows/lint.yml/badge.svg)](https://github.com/lukeab/asdf-datree/actions/workflows/lint.yml)


[datree](https://www.datree.io/) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

# Contents

- [Dependencies](#dependencies)
- [Install](#install)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

Standalone binary so no dependencies identified to date.

# Install

Plugin:

```shell
asdf plugin add datree
# or
asdf plugin add datree https://github.com/lukeab/asdf-datree.git
```

datree:

```shell
# Show all installable versions
asdf list-all datree

# Install specific version
asdf install datree latest

# Set a version globally (on your ~/.tool-versions file)
asdf global datree latest

# Now datree commands are available
datree version
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/lukeab/asdf-datree/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Luke Ashe-Browne](https://github.com/lukeab/)
