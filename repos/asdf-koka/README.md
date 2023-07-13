<div align="center">

# asdf-koka [![Build](https://github.com/susurri/asdf-koka/actions/workflows/build.yml/badge.svg)](https://github.com/susurri/asdf-koka/actions/workflows/build.yml) [![Lint](https://github.com/susurri/asdf-koka/actions/workflows/lint.yml/badge.svg)](https://github.com/susurri/asdf-koka/actions/workflows/lint.yml)


[koka](https://koka-lang.github.io/koka/doc/index.html) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

# Contents

- [Dependencies](#dependencies)
- [Install](#install)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

- `bash`, `curl`: generic POSIX utilities.
-  Stack to run the Haskell compiler.

# Install

Plugin:

```shell
asdf plugin add koka
# or
asdf plugin add koka https://github.com/susurri/asdf-koka.git
```

koka:

```shell
# Show all installable versions
asdf list-all koka

# Install specific version
asdf install koka latest

# Set a version globally (on your ~/.tool-versions file)
asdf global koka latest

# Now koka commands are available
koka --version
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/susurri/asdf-koka/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [susurri](https://github.com/susurri/)
