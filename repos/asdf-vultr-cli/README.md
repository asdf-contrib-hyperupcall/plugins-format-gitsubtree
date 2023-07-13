<div align="center">

# asdf-vultr-cli [![Build](https://github.com/ikuradon/asdf-vultr-cli/actions/workflows/build.yml/badge.svg)](https://github.com/ikuradon/asdf-vultr-cli/actions/workflows/build.yml) [![Lint](https://github.com/ikuradon/asdf-vultr-cli/actions/workflows/lint.yml/badge.svg)](https://github.com/ikuradon/asdf-vultr-cli/actions/workflows/lint.yml)


[vultr-cli](https://github.com/vultr/vultr-cli) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

# Contents

- [Dependencies](#dependencies)
- [Install](#install)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

**TODO: adapt this section**

- `bash`, `curl`, `tar`: generic POSIX utilities.
- `SOME_ENV_VAR`: set this environment variable in your shell config to load the correct version of tool x.

# Install

Plugin:

```shell
asdf plugin add vultr-cli
# or
asdf plugin add vultr-cli https://github.com/ikuradon/asdf-vultr-cli.git
```

vultr-cli:

```shell
# Show all installable versions
asdf list-all vultr-cli

# Install specific version
asdf install vultr-cli latest

# Set a version globally (on your ~/.tool-versions file)
asdf global vultr-cli latest

# Now vultr-cli commands are available
vultr-cli --help
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/ikuradon/asdf-vultr-cli/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [ikuradon](https://github.com/ikuradon/)
