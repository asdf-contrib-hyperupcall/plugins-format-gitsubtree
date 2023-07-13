<div align="center">

# asdf-spruce ![Build](https://github.com/woneill/asdf-spruce/workflows/Build/badge.svg) ![Lint](https://github.com/woneill/asdf-spruce/workflows/Lint/badge.svg)

[spruce](https://github.com/geofffranks/spruce) plugin for the [asdf version manager](https://asdf-vm.com).

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
asdf plugin add spruce
# or
asdf plugin add spruce https://github.com/woneill/asdf-spruce.git
```

spruce:

```shell
# Show all installable versions
asdf list-all spruce

# Install specific version
asdf install spruce latest

# Set a version globally (on your ~/.tool-versions file)
asdf global spruce latest

# Now spruce commands are available
spruce --help
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/woneill/asdf-spruce/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Bill ONeill](https://github.com/woneill/)
