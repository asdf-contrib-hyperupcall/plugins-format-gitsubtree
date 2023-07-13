<div align="center">

# asdf-kubectl-convert [![Build](https://github.com/iul1an/asdf-kubectl-convert/actions/workflows/build.yml/badge.svg)](https://github.com/iul1an/asdf-kubectl-convert/actions/workflows/build.yml) [![Lint](https://github.com/iul1an/asdf-kubectl-convert/actions/workflows/lint.yml/badge.svg)](https://github.com/iul1an/asdf-kubectl-convert/actions/workflows/lint.yml)


[kubectl-convert](https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/#install-kubectl-convert-plugin) plugin for the [asdf version manager](https://asdf-vm.com).

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
asdf plugin add kubectl-convert
# or
asdf plugin add kubectl-convert https://github.com/iul1an/asdf-kubectl-convert.git
```

kubectl-convert:

```shell
# Show all installable versions
asdf list-all kubectl-convert

# Install specific version
asdf install kubectl-convert latest

# Set a version globally (on your ~/.tool-versions file)
asdf global kubectl-convert latest

# Now kubectl-convert commands are available
kubectl-convert --help
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/iul1an/asdf-kubectl-convert/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Iulian Mandache](https://github.com/iul1an/)
