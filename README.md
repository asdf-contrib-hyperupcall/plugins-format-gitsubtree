<div align="center">

# asdf-tuist [![Build](https://github.com/cprecioso/asdf-tuist/actions/workflows/build.yml/badge.svg)](https://github.com/cprecioso/asdf-tuist/actions/workflows/build.yml) [![Lint](https://github.com/cprecioso/asdf-tuist/actions/workflows/lint.yml/badge.svg)](https://github.com/cprecioso/asdf-tuist/actions/workflows/lint.yml)

[tuist](https://tuist.io/) plugin for the [asdf](https://asdf-vm.com) and [rtx](https://rtx.pub) version managers.

</div>

It takes the place of the default `tuistenv` manager, which means that the commands explained at the [Tuist Version Management Docs](https://docs.tuist.io/guides/version-management) are not available. Use the standard `asdf`/`rtx` commands for those features.

If you enable `legacy-version-file` in `asdf`  ([asdf docs](https://asdf-vm.com/manage/configuration.html#legacy-version-file), on by default in rtx), it will read `.tuist-version` files, and interoperate seamlessly with people using `tuistenv`.

# Contents

- [Dependencies](#dependencies)
- [Install](#install)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

- macOS
- `bash`, `curl`, `unzip`: generic POSIX utilities.

# Install

Plugin:

```shell
asdf plugin add tuist
# or
asdf plugin add tuist https://github.com/cprecioso/asdf-tuist.git
```

tuist:

```shell
# Show all installable versions
asdf list-all tuist

# Install specific version
asdf install tuist latest

# Set a version globally (on your ~/.tool-versions file)
asdf global tuist latest

# Now tuist commands are available
tuist version
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/cprecioso/asdf-tuist/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Carlos Precioso](https://github.com/cprecioso/)
