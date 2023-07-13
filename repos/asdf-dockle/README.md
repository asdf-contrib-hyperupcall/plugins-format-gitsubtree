<div align="center">

# asdf-dockle [![Build](https://github.com/mathew-fleisch/asdf-dockle/actions/workflows/build.yml/badge.svg)](https://github.com/mathew-fleisch/asdf-dockle/actions/workflows/build.yml) [![Lint](https://github.com/mathew-fleisch/asdf-dockle/actions/workflows/lint.yml/badge.svg)](https://github.com/mathew-fleisch/asdf-dockle/actions/workflows/lint.yml)


[dockle](https://github.com/goodwithtech/dockle) plugin for the [asdf version manager](https://asdf-vm.com).

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
asdf plugin add dockle
# or
asdf plugin add dockle https://github.com/mathew-fleisch/asdf-dockle.git
```

dockle:

```shell
# Show all installable versions
asdf list-all dockle

# Install specific version
asdf install dockle latest

# Set a version globally (on your ~/.tool-versions file)
asdf global dockle latest

# Now dockle commands are available
dockle --version
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/mathew-fleisch/asdf-dockle/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Mathew Fleisch](https://github.com/mathew-fleisch/)
