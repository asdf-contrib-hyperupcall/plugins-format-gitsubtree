<div align="center">

# asdf-mask [![Build](https://github.com/aaaaninja/asdf-mask/actions/workflows/build.yml/badge.svg)](https://github.com/aaaaninja/asdf-mask/actions/workflows/build.yml) [![Lint](https://github.com/aaaaninja/asdf-mask/actions/workflows/lint.yml/badge.svg)](https://github.com/aaaaninja/asdf-mask/actions/workflows/lint.yml)


[mask](https://github.com/jakedeichert/mask) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

# Contents

- [Dependencies](#dependencies)
- [Install](#install)
- [Why?](#why)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

- `bash`, `curl`, `tar`: generic POSIX utilities.
- `unzip`, `mktemp`
- `SOME_ENV_VAR`: set this environment variable in your shell config to load the correct version of tool x.

# Install

Plugin:

```shell
asdf plugin add mask
# or
asdf plugin add mask https://github.com/aaaaninja/asdf-mask.git
```

mask:

```shell
# Show all installable versions
asdf list-all mask

# Install specific version
asdf install mask latest

# Set a version globally (on your ~/.tool-versions file)
asdf global mask latest

# Now mask commands are available
mask --help
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/aaaaninja/asdf-mask/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [aaaaninja](https://github.com/aaaaninja/)
