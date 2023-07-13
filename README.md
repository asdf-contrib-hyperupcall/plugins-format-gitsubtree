<div align="center">

# asdf-tfnotify [![Build](https://github.com/jnavarrof/asdf-tfnotify/actions/workflows/build.yml/badge.svg)](https://github.com/jnavarrof/asdf-tfnotify/actions/workflows/build.yml) [![Lint](https://github.com/jnavarrof/asdf-tfnotify/actions/workflows/lint.yml/badge.svg)](https://github.com/jnavarrof/asdf-tfnotify/actions/workflows/lint.yml)


[tfnotify](https://github.com/mercari/tfnotify) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

# Contents

- [Dependencies](#dependencies)
- [Install](#install)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

- `bash`, `curl`, `tar`, `unzip`: generic POSIX utilities.

# Install

Plugin:

```shell
asdf plugin add tfnotify
# or
asdf plugin add tfnotify https://github.com/jnavarrof/asdf-tfnotify.git
```

tfnotify:

```shell
# Show all installable versions
asdf list-all tfnotify

# Install specific version
asdf install tfnotify latest

# Set a version globally (on your ~/.tool-versions file)
asdf global tfnotify latest

# Now tfnotify commands are available
tfnotify --help
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/mercari/asdf-tfnotify/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Mercari Inc.](https://github.com/mercari/)
