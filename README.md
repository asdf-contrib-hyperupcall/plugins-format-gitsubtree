<div align="center">

# asdf-tfctl [![Build](https://github.com/deas/asdf-tfctl/actions/workflows/build.yml/badge.svg)](https://github.com/deas/asdf-tfctl/actions/workflows/build.yml) [![Lint](https://github.com/deas/asdf-tfctl/actions/workflows/lint.yml/badge.svg)](https://github.com/deas/asdf-tfctl/actions/workflows/lint.yml)


[tfctl](https://weaveworks.github.io/tf-controller/tfctl) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

# Contents

- [Dependencies](#dependencies)
- [Install](#install)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

**TODO: adapt this section**

- `bash`, `curl`, `tar`: generic POSIX utilities.
- `SOME_ENV_VAR`: set this environment variable in your shell config to load the correct version of tool x.

# Install

Plugin:

```shell
asdf plugin add tfctl
# or
asdf plugin add tfctl https://github.com/deas/asdf-tfctl.git
```

tfctl:

```shell
# Show all installable versions
asdf list-all tfctl

# Install specific version
asdf install tfctl latest

# Set a version globally (on your ~/.tool-versions file)
asdf global tfctl latest

# Now tfctl commands are available
tfctl --help
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/deas/asdf-tfctl/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Andreas Steffan](https://github.com/deas/)
