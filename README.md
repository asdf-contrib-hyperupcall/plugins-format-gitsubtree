<div align="center">

# asdf-liqoctl [![Build](https://github.com/pdemagny/asdf-liqoctl/actions/workflows/build.yml/badge.svg)](https://github.com/pdemagny/asdf-liqoctl/actions/workflows/build.yml) [![Lint](https://github.com/pdemagny/asdf-liqoctl/actions/workflows/lint.yml/badge.svg)](https://github.com/pdemagny/asdf-liqoctl/actions/workflows/lint.yml)


[liqoctl](https://docs.liqo.io/) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

# Contents

- [Dependencies](#dependencies)
- [Install](#install)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

- `bash`, `curl`, `tar`: generic POSIX utilities.

# Install

Plugin:

```shell
asdf plugin add liqoctl
# or
asdf plugin add liqoctl https://github.com/pdemagny/asdf-liqoctl.git
```

liqoctl:

```shell
# Show all installable versions
asdf list-all liqoctl

# Install specific version
asdf install liqoctl latest

# Set a version globally (on your ~/.tool-versions file)
asdf global liqoctl latest

# Now liqoctl commands are available
liqoctl version --client
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/pdemagny/asdf-liqoctl/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Pierre Demagny](https://github.com/pdemagny/)
