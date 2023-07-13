<div align="center">

# asdf-oci [![Build](https://github.com/yasn77/asdf-oci/actions/workflows/build.yml/badge.svg)](https://github.com/yasn77/asdf-oci/actions/workflows/build.yml) [![Lint](https://github.com/yasn77/asdf-oci/actions/workflows/lint.yml/badge.svg)](https://github.com/yasn77/asdf-oci/actions/workflows/lint.yml)


[oci](https://docs.oracle.com/en-us/iaas/Content/API/Concepts/cliconcepts.htm) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

# Contents

- [Dependencies](#dependencies)
- [Install](#install)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

- `bash`, `curl`, `tar`, `zip`: generic POSIX utilities.
- `python` : Python v3, used by Oracle CLI install script

# Install

Plugin:

```shell
asdf plugin add oci
# or
asdf plugin add oci https://github.com/yasn77/asdf-oci.git
```

oci:

```shell
# Show all installable versions
asdf list-all oci

# Install specific version
asdf install oci latest

# Set a version globally (on your ~/.tool-versions file)
asdf global oci latest

# Now oci commands are available
oci --help
```

# Auto completion

You can source/use contents of `~/.bashrc.oci` to set up auto completion

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/yasn77/asdf-oci/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Yasser Saleemi](https://github.com/yasn77/)
