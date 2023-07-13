<div align="center">

# asdf-amass [![Build](https://github.com/dhoeric/asdf-amass/actions/workflows/build.yml/badge.svg)](https://github.com/dhoeric/asdf-amass/actions/workflows/build.yml) [![Lint](https://github.com/dhoeric/asdf-amass/actions/workflows/lint.yml/badge.svg)](https://github.com/dhoeric/asdf-amass/actions/workflows/lint.yml)


[amass](https://github.com/OWASP/Amass) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

# Contents

- [asdf-amass  ](#asdf-amass--)
- [Contents](#contents)
- [Dependencies](#dependencies)
- [Install](#install)
- [Contributing](#contributing)
- [License](#license)

# Dependencies


- `bash`, `curl`, `unzip`: generic POSIX utilities.

# Install

Plugin:

```shell
asdf plugin add amass
# or
asdf plugin add amass https://github.com/dhoeric/asdf-amass.git
```

amass:

```shell
# Show all installable versions
asdf list-all amass

# Install specific version
asdf install amass latest

# Set a version globally (on your ~/.tool-versions file)
asdf global amass latest

# Now amass commands are available
amass -help
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/dhoeric/asdf-amass/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Eric Ho](https://github.com/dhoeric/)
