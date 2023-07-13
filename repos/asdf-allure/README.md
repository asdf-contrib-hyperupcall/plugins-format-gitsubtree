<div align="center">

# asdf-allure [![Build](https://github.com/comdotlinux/asdf-allure2/actions/workflows/build.yml/badge.svg?branch=master)](https://github.com/comdotlinux/asdf-allure2/actions/workflows/build.yml) [![Lint](https://github.com/comdotlinux/asdf-allure2/actions/workflows/lint.yml/badge.svg?branch=master)](https://github.com/comdotlinux/asdf-allure2/actions/workflows/lint.yml)

[allure](https://docs.qameta.io/allure) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

# Contents

- [Dependencies](#dependencies)
- [Install](#install)
- [Why?](#why)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

- `bash`, `curl`, `tar`: generic POSIX utilities.
- `java`: see [asdf-java](https://github.com/halcyon/asdf-java) for installtion instructions

# Install

Plugin:

```shell
asdf plugin add allure
# or
asdf plugin add allure https://github.com/comdotlinux/asdf-allure.git
```

allure:

```shell
# Show all installable versions
asdf list-all allure

# Install specific version
asdf install allure latest

# Set a version globally (on your ~/.tool-versions file)
asdf global allure latest

# Now allure commands are available
allure --version
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/comdotlinux/asdf-allure/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Guruprasad Kulkarni](https://github.com/comdotlinux/)
