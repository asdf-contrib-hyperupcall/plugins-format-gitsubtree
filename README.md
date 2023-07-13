<div align="center">

# asdf-starport [![Build](https://github.com/nikever/asdf-starport/actions/workflows/build.yml/badge.svg)](https://github.com/nikever/asdf-starport/actions/workflows/build.yml) [![Lint](https://github.com/nikever/asdf-starport/actions/workflows/lint.yml/badge.svg)](https://github.com/nikever/asdf-starport/actions/workflows/lint.yml)


[starport](https://docs.starport.network/) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

# Contents

- [Dependencies](#dependencies)
- [Install](#install)
- [Why?](#why)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

- `bash`, `curl`, `tar`: generic POSIX utilities.

# Install

asdf:

To install asdf, please refer to this [guide](http://asdf-vm.com/guide/getting-started.html)

Plugin:

```shell
asdf plugin add starport
# or
asdf plugin add starport https://github.com/nikever/asdf-starport.git
```

starport:

```shell
# Show all installable versions
asdf list-all starport

# Install specific version
asdf install starport latest

# Set a version globally (on your ~/.tool-versions file)
asdf global starport latest

# Now starport commands are available
starport --help
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/nikever/asdf-starport/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Niccolo Raspa](https://github.com/nikever/)
