<div align="center">

# asdf-sshuttle [![Build](https://github.com/xanmanning/asdf-sshuttle/actions/workflows/build.yml/badge.svg)](https://github.com/xanmanning/asdf-sshuttle/actions/workflows/build.yml) [![Lint](https://github.com/xanmanning/asdf-sshuttle/actions/workflows/lint.yml/badge.svg)](https://github.com/xanmanning/asdf-sshuttle/actions/workflows/lint.yml)


[sshuttle](https://sshuttle.readthedocs.org/) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

# Note

This is for the Python version of sshuttle - a sshuttle Rust plugin may be made available in the future.

# Contents

- [Dependencies](#dependencies)
- [Install](#install)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

- `bash`, `curl`, `tar`: generic POSIX utilities.
- `python3`: runtime for the application.

# Install

Plugin:

```shell
asdf plugin add sshuttle
# or
asdf plugin add sshuttle https://github.com/xanmanning/asdf-sshuttle.git
```

sshuttle:

```shell
# Show all installable versions
asdf list-all sshuttle

# Install specific version
asdf install sshuttle latest

# Set a version globally (on your ~/.tool-versions file)
asdf global sshuttle latest

# Now sshuttle commands are available
sshuttle --version
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/xanmanning/asdf-sshuttle/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Xan Manning](https://github.com/xanmanning/)
