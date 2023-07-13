<div align="center">

# asdf-titan [![Build](https://github.com/Gabitchov/asdf-titan/actions/workflows/build.yml/badge.svg)](https://github.com/Gabitchov/asdf-titan/actions/workflows/build.yml) [![Lint](https://github.com/Gabitchov/asdf-titan/actions/workflows/lint.yml/badge.svg)](https://github.com/Gabitchov/asdf-titan/actions/workflows/lint.yml)


[titan](https://titan-data.io/docs) plugin for the [asdf version manager](https://asdf-vm.com).

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
asdf plugin add titan
# or
asdf plugin add titan https://github.com/Gabitchov/asdf-titan.git
```

titan:

```shell
# Show all installable versions
asdf list-all titan

# Install specific version
asdf install titan latest

# Set a version globally (on your ~/.tool-versions file)
asdf global titan latest

# Now titan commands are available
titan --version
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/Gabitchov/asdf-titan/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Gabriel PASCUAL](https://github.com/Gabitchov/)
