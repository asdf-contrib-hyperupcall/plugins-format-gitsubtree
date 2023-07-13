<div align="center">

# asdf-schemacrawler [![Build](https://github.com/davidecavestro/asdf-schemacrawler/actions/workflows/build.yml/badge.svg)](https://github.com/davidecavestro/asdf-schemacrawler/actions/workflows/build.yml) [![Lint](https://github.com/davidecavestro/asdf-schemacrawler/actions/workflows/lint.yml/badge.svg)](https://github.com/davidecavestro/asdf-schemacrawler/actions/workflows/lint.yml)


[schemacrawler](https://www.schemacrawler.com/) [CLI] and interactive [shell](https://www.schemacrawler.com/schemacrawler-shell.html) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

# Contents

- [Dependencies](#dependencies)
- [Install](#install)
- [Why?](#why)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

- `bash`, `curl`, `unzip`: generic POSIX utilities.
- `java`: Java SE 8 or above, i.e. install it using `asdf install java latest`.

# Install

Plugin:

```shell
asdf plugin add schemacrawler
# or
asdf plugin add schemacrawler https://github.com/davidecavestro/asdf-schemacrawler.git
```

schemacrawler:

```shell
# Show all installable versions
asdf list-all schemacrawler

# Install specific version
asdf install schemacrawler latest

# Set a version globally (on your ~/.tool-versions file)
asdf global schemacrawler latest

# Now schemacrawler commands are available
schemacrawler --version
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/davidecavestro/asdf-schemacrawler/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Davide Cavestro](https://github.com/davidecavestro/)
