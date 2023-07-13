<div align="center">

# asdf-tonnage [![Build](https://github.com/elementalvoid/asdf-tonnage/actions/workflows/build.yml/badge.svg)](https://github.com/elementalvoid/asdf-tonnage/actions/workflows/build.yml) [![Lint](https://github.com/elementalvoid/asdf-tonnage/actions/workflows/lint.yml/badge.svg)](https://github.com/elementalvoid/asdf-tonnage/actions/workflows/lint.yml)


[tonnage](https://github.com/elementalvoid/tonnage) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

# Contents

- [Dependencies](#dependencies)
- [Install](#install)
- [Why?](#why)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

- `bash`, `curl`, `tar`: generic POSIX utilities.
- `SOME_ENV_VAR`: set this environment variable in your shell config to load the correct version of tool x.

# Install

Plugin:

```shell
asdf plugin add tonnage
# or
asdf plugin add tonnage https://github.com/elementalvoid/asdf-tonnage.git
```

tonnage:

```shell
# Show all installable versions
asdf list-all tonnage

# Install specific version
asdf install tonnage latest

# Set a version globally (on your ~/.tool-versions file)
asdf global tonnage latest

# Now tonnage commands are available
tonnage --help
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/elementalvoid/asdf-tonnage/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Matt Klich](https://github.com/elementalvoid/)
