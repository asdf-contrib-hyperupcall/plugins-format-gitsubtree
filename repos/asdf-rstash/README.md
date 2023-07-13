<div align="center">

# asdf-rstash [![Build](https://github.com/carlduevel/asdf-rstash/actions/workflows/build.yml/badge.svg)](https://github.com/carlduevel/asdf-rstash/actions/workflows/build.yml) [![Lint](https://github.com/carlduevel/asdf-rstash/actions/workflows/lint.yml/badge.svg)](https://github.com/carlduevel/asdf-rstash/actions/workflows/lint.yml)


[rstash](https://github.com/carlduevel/rstash) plugin for the [asdf version manager](https://asdf-vm.com).

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
asdf plugin add rstash
# or
asdf plugin add rstash https://github.com/carlduevel/asdf-rstash.git
```

rstash:

```shell
# Show all installable versions
asdf list-all rstash

# Install specific version
asdf install rstash latest

# Set a version globally (on your ~/.tool-versions file)
asdf global rstash latest

# Now rstash commands are available
rstash help
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/carlduevel/asdf-rstash/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Carl Düvel](https://github.com/carlduevel/)
