<div align="center">

# asdf-spacectl [![Build](https://github.com/bodgit/asdf-spacectl/actions/workflows/build.yml/badge.svg)](https://github.com/bodgit/asdf-spacectl/actions/workflows/build.yml) [![Lint](https://github.com/bodgit/asdf-spacectl/actions/workflows/lint.yml/badge.svg)](https://github.com/bodgit/asdf-spacectl/actions/workflows/lint.yml)


[spacectl](https://github.com/spacelift-io/spacectl) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

# Contents

- [Dependencies](#dependencies)
- [Install](#install)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

**TODO: adapt this section**

- `bash`, `curl`, `unzip`: generic POSIX utilities.
- `SOME_ENV_VAR`: set this environment variable in your shell config to load the correct version of tool x.

# Install

Plugin:

```shell
asdf plugin add spacectl
# or
asdf plugin add spacectl https://github.com/bodgit/asdf-spacectl.git
```

spacectl:

```shell
# Show all installable versions
asdf list-all spacectl

# Install specific version
asdf install spacectl latest

# Set a version globally (on your ~/.tool-versions file)
asdf global spacectl latest

# Now spacectl commands are available
spacectl --version
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/bodgit/asdf-spacectl/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Matt Dainty](https://github.com/bodgit/)
