<div align="center">

# asdf-choose [![Build](https://github.com/carbonteq/asdf-choose/actions/workflows/build.yml/badge.svg)](https://github.com/carbonteq/asdf-choose/actions/workflows/build.yml) [![Lint](https://github.com/carbonteq/asdf-choose/actions/workflows/lint.yml/badge.svg)](https://github.com/carbonteq/asdf-choose/actions/workflows/lint.yml)

[choose](https://github.com/theryangeary/choose) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

# Contents

- [Dependencies](#dependencies)
- [Install](#install)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

- `bash`, `curl`, `tar`: generic POSIX utilities

# Install

Plugin:

```shell
asdf plugin add choose

# or

asdf plugin add choose https://github.com/carbonteq/asdf-choose.git
```

choose:

```shell
# Show all installable versions
asdf list-all choose

# Install specific version
asdf install choose latest

# Set a version globally (on your ~/.tool-versions file)
asdf global choose latest

# Now choose commands are available
choose --version
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/carbonteq/asdf-choose/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Carbonteq](https://github.com/carbonteq/)
