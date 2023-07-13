<div align="center">

# asdf-kompose ![Build](https://github.com/technikhil314/asdf-kompose/workflows/main/badge.svg?branch=master)

[kompose](https://github.com/kubernetes/kompose) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

## Contents

- [Dependencies](#dependencies)
- [Install](#install)
- [Contributing](#contributing)
- [License](#license)

### Dependencies

- `bash` with `curl` or `wget`: generic POSIX utilities. Mostly installed already on linux, mac or any GNU POSIX OS

### Install

Plugin:

```shell
asdf plugin add kompose
# or
asdf plugin add https://github.com/technikhil314/asdf-kompose.git
```

kompose:

```shell
# Show all installable versions
asdf list-all kompose

# Install specific version
asdf install kompose latest

# Set a version globally (on your ~/.tool-versions file)
asdf global kompose latest

# Now kompose commands are available
kompose --help
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

### Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/technikhil314/asdf-kompose/graphs/contributors)!

### License

See [LICENSE](LICENSE) © [Nikhil Mehta](https://github.com/technikhil314/)
