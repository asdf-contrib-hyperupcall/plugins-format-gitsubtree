<div align="center">

# asdf-gallery-dl [![Build](https://github.com/iul1an/asdf-gallery-dl/actions/workflows/build.yml/badge.svg)](https://github.com/iul1an/asdf-gallery-dl/actions/workflows/build.yml) [![Lint](https://github.com/iul1an/asdf-gallery-dl/actions/workflows/lint.yml/badge.svg)](https://github.com/iul1an/asdf-gallery-dl/actions/workflows/lint.yml)


[gallery-dl](https://github.com/mikf/gallery-dl) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

# Contents
- [Compatibility](#compatibility)
- [Install](#install)
- [Contributing](#contributing)
- [License](#license)

# Compatibility
This plugin works with Linux and MacOS, both amd64 and arm64 CPU architecture.

# Install

Plugin:

```shell
asdf plugin add gallery-dl
# or
asdf plugin add gallery-dl https://github.com/iul1an/asdf-gallery-dl.git
```

gallery-dl:

```shell
# Show all installable versions
asdf list-all gallery-dl

# Install specific version
asdf install gallery-dl latest

# Set a version globally (on your ~/.tool-versions file)
asdf global gallery-dl latest

# Now gallery-dl commands are available
gallery-dl --help
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/iul1an/asdf-gallery-dl/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Iulian Mandache](https://github.com/iul1an/)
