<div align="center">

# asdf-goconvey [![Build](https://github.com/therounds-contrib/asdf-goconvey/actions/workflows/build.yml/badge.svg)](https://github.com/therounds-contrib/asdf-goconvey/actions/workflows/build.yml) [![Lint](https://github.com/therounds-contrib/asdf-goconvey/actions/workflows/lint.yml/badge.svg)](https://github.com/therounds-contrib/asdf-goconvey/actions/workflows/lint.yml)


[goconvey](https://smartystreets.github.io/goconvey/) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

# Contents

- [Dependencies](#dependencies)
- [Install](#install)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

This plugin depends on common POSIX utilities (`awk`, `grep`, `sed`, etc.),
Bash, Git, and Go. If you have a Go toolchain installed and selected via asdf
(`asdf current golang`), it will be used to retrieve and build goconvey.
Otherwise, asdf will be used to retrieve the latest Go version and that will be
used for the build.

# Install

Plugin:

```shell
asdf plugin add goconvey
# or
asdf plugin add goconvey https://github.com/therounds-contrib/asdf-goconvey.git
```

goconvey:

```shell
# Show all installable versions
asdf list-all goconvey

# Install specific version
asdf install goconvey latest

# Set a version globally (on your ~/.tool-versions file)
asdf global goconvey latest

# Now goconvey commands are available
goconvey -help
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](CONTRIBUTING.md).

[Thanks goes to these contributors](https://github.com/therounds-contrib/asdf-goconvey/graphs/contributors)!

# License

See [LICENSE](LICENSE).

Copyright © 2023 [Boondoc Technologies Inc.](https://therounds.com/)
