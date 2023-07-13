<div align="center">

# asdf-kcat [![Build](https://github.com/douglasdgoulart/asdf-kcat/actions/workflows/build.yml/badge.svg)](https://github.com/douglasdgoulart/asdf-kcat/actions/workflows/build.yml) [![Lint](https://github.com/douglasdgoulart/asdf-kcat/actions/workflows/lint.yml/badge.svg)](https://github.com/douglasdgoulart/asdf-kcat/actions/workflows/lint.yml)

[kcat](https://github.com/edenhill/kcat) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

# Contents

- [Dependencies](#dependencies)
- [Install](#install)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

- `bash`, `curl`, `tar`: generic POSIX utilities.
- librdkafka - https://github.com/edenhill/librdkafka
- libyajl (for JSON support, optional)
- libavro-c and libserdes (for Avro support, optional. See https://github.com/confluentinc/libserdes)

On Ubuntu or Debian: `sudo apt-get install librdkafka-dev libyajl-dev`

# Install

Plugin:

```shell
asdf plugin add kcat
# or
asdf plugin add kcat https://github.com/douglasdgoulart/asdf-kcat.git
```

kcat:

```shell
# Show all installable versions
asdf list-all kcat

# Install specific version
asdf install kcat latest

# Set a version globally (on your ~/.tool-versions file)
asdf global kcat latest

# Now kcat commands are available
kcat -h
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/douglasdgoulart/asdf-kcat/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Douglas Goulart](https://github.com/douglasdgoulart/)
