<div align="center">

# asdf-carthage ![Build](https://github.com/younke/asdf-carthage/workflows/Build/badge.svg) ![Lint](https://github.com/younke/asdf-carthage/workflows/Lint/badge.svg)

[carthage](https://github.com/Carthage/Carthage) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

# Contents

- [Dependencies](#dependencies)
- [Install](#install)
- [Why?](#why)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

- `bash`, `curl`, `tar`: generic POSIX utilities.
- [Xcode 10.0 (Swift 4.2)](https://github.com/Carthage/Carthage#installing-carthage)

# Install

Plugin:

```shell
asdf plugin add carthage
# or
asdf plugin add carthage https://github.com/younke/asdf-carthage.git
```

carthage:

```shell
# Show all installable versions
asdf list-all carthage

# Install specific version
asdf install carthage latest

# Set a version globally (on your ~/.tool-versions file)
asdf global carthage latest

# Now carthage commands are available
carthage
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/younke/asdf-carthage/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Vasily Ptitsyn](https://github.com/younke/)
