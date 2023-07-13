<div align="center">

# asdf-kubelogin [![Build](https://github.com/sechmann/asdf-kubelogin/actions/workflows/build.yml/badge.svg)](https://github.com/sechmann/asdf-kubelogin/actions/workflows/build.yml) [![Lint](https://github.com/sechmann/asdf-kubelogin/actions/workflows/lint.yml/badge.svg)](https://github.com/sechmann/asdf-kubelogin/actions/workflows/lint.yml)

[kubelogin](https://github.com/Azure/kubelogin) plugin for the
[asdf version manager](https://asdf-vm.com).

</div>

# Contents

- [Dependencies](#dependencies)
- [Install](#install)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

- none that i know of

# Install

Plugin:

```shell
asdf plugin add kubelogin
# or
asdf plugin add kubelogin https://github.com/sechmann/asdf-kubelogin.git
```

kubelogin:

```shell
# Show all installable versions
asdf list-all kubelogin

# Install specific version
asdf install kubelogin latest

# Set a version globally (on your ~/.tool-versions file)
asdf global kubelogin latest

# Now kubelogin commands are available
kubelogin --version
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on
how to install & manage versions.

# Contributing

Contributions of any kind welcome! See the
[contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/sechmann/asdf-kubelogin/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Vegar Sechmann Molvig](https://github.com/sechmann/)
