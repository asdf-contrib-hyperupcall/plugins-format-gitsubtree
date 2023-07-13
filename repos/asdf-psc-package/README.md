<div align="center">

# asdf-psc-package ![Build](https://github.com/nsaunders/asdf-psc-package/workflows/Build/badge.svg) ![Lint](https://github.com/nsaunders/asdf-psc-package/workflows/Lint/badge.svg)

[psc-package](https://psc-package.readthedocs.io) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

# Dependencies

- `bash`, `curl`, `tar`: generic POSIX utilities.

# Install

Plugin:

```shell
asdf plugin add psc-package
# or
asdf plugin add psc-package https://github.com/nsaunders/asdf-psc-package.git
```

psc-package:

```shell
# Show all installable versions
asdf list-all psc-package

# Install specific version
asdf install psc-package latest

# Set a version globally (on your ~/.tool-versions file)
asdf global psc-package latest

# Now psc-package commands are available
psc-package --help
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/nsaunders/asdf-psc-package/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Nick Saunders](https://github.com/nsaunders/)
