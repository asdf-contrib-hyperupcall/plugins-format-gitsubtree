<div align="center">

# asdf-copper [![Build](https://github.com/vladlosev/asdf-copper/workflows/Build/badge.svg)](https://github.com/vladlosev/asdf-copper/actions?query=workflow%3ABuild) [![Lint](https://github.com/vladlosev/asdf-copper/workflows/Lint/badge.svg)](https://github.com/vladlosev/asdf-copper/actions?query=workflow%3ALint)

[copper](https://help.cloud66.com/copper/) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

# Contents

- [Dependencies](#dependencies)
- [Install](#install)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

- `bash`, `curl`, `tar`: generic POSIX utilities.
- `SOME_ENV_VAR`: set this environment variable in your shell config to load the correct version of tool x.

# Install

Plugin:

```shell
asdf plugin add copper
# or
asdf plugin add https://github.com/vladlosev/asdf-copper.git
```

copper:

```shell
# Show all installable versions
asdf list-all copper

# Install specific version
asdf install copper latest

# Set a version globally (on your ~/.tool-versions file)
asdf global copper latest

# Now copper commands are available
copper version
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/vladlosev/asdf-copper/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Vlad Losev](https://github.com/vladlosev/)
