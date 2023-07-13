<div align="center">

# asdf-circleci-cli [![Build](https://github.com/ucpr/asdf-circleci-cli/actions/workflows/build.yml/badge.svg)](https://github.com/ucpr/asdf-circleci-cli/actions/workflows/build.yml) [![Lint](https://github.com/ucpr/asdf-circleci-cli/actions/workflows/lint.yml/badge.svg)](https://github.com/ucpr/asdf-circleci-cli/actions/workflows/lint.yml)

[circleci-cli](https://github.com/CircleCI-Public/circleci-cli) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

# Contents

- [Dependencies](#dependencies)
- [Install](#install)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

- `bash`, `curl`, `tar`: generic POSIX utilities.

# Install

Plugin:

```shell
asdf plugin add circleci-cli
# or
asdf plugin add circleci-cli https://github.com/ucpr/asdf-circleci-cli.git
```

circleci-cli:

```shell
# Show all installable versions
asdf list-all circleci-cli

# Install specific version
asdf install circleci-cli latest

# Set a version globally (on your ~/.tool-versions file)
asdf global circleci-cli latest

# Now circleci commands are available
circleci --help
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/ucpr/asdf-circleci-cli/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [taichi uchihara](https://github.com/ucpr/)
