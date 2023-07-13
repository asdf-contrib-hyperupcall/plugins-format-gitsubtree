<div align="center">

# asdf-depot [![Build](https://github.com/depot/asdf-depot/actions/workflows/build.yml/badge.svg)](https://github.com/depot/asdf-depot/actions/workflows/build.yml) [![Lint](https://github.com/depot/asdf-depot/actions/workflows/lint.yml/badge.svg)](https://github.com/depot/asdf-depot/actions/workflows/lint.yml)


[depot](https://github.com/depot/cli) plugin for the [asdf version manager](https://asdf-vm.com).

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
asdf plugin add depot https://github.com/depot/asdf-depot.git
```

depot:

```shell
# Show all installable versions
asdf list-all depot

# Install specific version
asdf install depot latest

# Set a version globally (on your ~/.tool-versions file)
asdf global depot latest

# Now depot commands are available
depot --help
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/depot/asdf-depot/graphs/contributors)!

# License

MIT License, see [`LICENSE`](LICENSE)

© [Depot Technologies Inc](https://github.com/depot)
