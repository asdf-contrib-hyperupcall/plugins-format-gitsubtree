<div align="center">

# asdf-starboard [![Build](https://github.com/zufardhiyaulhaq/asdf-starboard/actions/workflows/build.yml/badge.svg)](https://github.com/zufardhiyaulhaq/asdf-starboard/actions/workflows/build.yml) [![Lint](https://github.com/zufardhiyaulhaq/asdf-starboard/actions/workflows/lint.yml/badge.svg)](https://github.com/zufardhiyaulhaq/asdf-starboard/actions/workflows/lint.yml)


[starboard](https://github.com/aquasecurity/starboard) plugin for the [asdf version manager](https://asdf-vm.com).

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

Plugin:

```shell
asdf plugin add starboard https://github.com/zufardhiyaulhaq/asdf-starboard.git
```

starboard:

```shell
# Show all installable versions
asdf list-all starboard

# Install specific version
asdf install starboard latest

# Set a version globally (on your ~/.tool-versions file)
asdf global starboard latest

# Now starboard commands are available
starboard version
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/zufardhiyaulhaq/asdf-starboard/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Zufar Dhiyaulhaq](https://github.com/zufardhiyaulhaq/)
