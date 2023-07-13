<div align="center">

# asdf-spectral [![Build](https://github.com/vbyrd/asdf-spectral/actions/workflows/build.yml/badge.svg)](https://github.com/vbyrd/asdf-spectral/actions/workflows/build.yml) [![Lint](https://github.com/vbyrd/asdf-spectral/actions/workflows/lint.yml/badge.svg)](https://github.com/vbyrd/asdf-spectral/actions/workflows/lint.yml)


[spectral](https://meta.stoplight.io/docs/spectral/674b27b261c3c-overview) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

# Contents

- [Dependencies](#dependencies)
- [Install](#install)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

None

# Install

Plugin:

```shell
asdf plugin add spectral
# or
asdf plugin add spectral https://github.com/vbyrd/asdf-spectral.git
```

spectral:

```shell
# Show all installable versions
asdf list-all spectral

# Install specific version
asdf install spectral latest

# Set a version globally (on your ~/.tool-versions file)
asdf global spectral latest

# Now spectral commands are available
spectral --version
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/vbyrd/asdf-spectral/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Victor Byrd](https://github.com/vbyrd/)
