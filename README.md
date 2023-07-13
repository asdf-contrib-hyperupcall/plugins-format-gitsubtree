<div align="center">

# asdf-syft [![Build](https://github.com/davidgp1701/asdf-syft/actions/workflows/build.yml/badge.svg)](https://github.com/davidgp1701/asdf-syft/actions/workflows/build.yml) [![Lint](https://github.com/davidgp1701/asdf-syft/actions/workflows/lint.yml/badge.svg)](https://github.com/davidgp1701/asdf-syft/actions/workflows/lint.yml)


[syft](https://github.com/anchore/syft) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

# Contents

- [Dependencies](#dependencies)
- [Install](#install)
- [Why?](#why)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

- `bash`, `curl`: generic POSIX utilities.
- `tar`: generic POSIX utility for Linux environments.
- `unzip`: For Mac OS X environments.

# Install

Plugin:

```shell
asdf plugin add syft
# or
asdf plugin add syft https://github.com/davidgp1701/asdf-syft.git
```

syft:

```shell
# Show all installable versions
asdf list-all syft

# Install specific version
asdf install syft latest

# Set a version globally (on your ~/.tool-versions file)
asdf global syft latest

# Now syft commands are available
syft version
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/davidgp1701/asdf-syft/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [David Garcia Perez](https://github.com/davidgp1701/)
