<div align="center">

# asdf-aws-amplify-cli [![Build](https://github.com/LozanoMatheus/asdf-aws-amplify-cli/actions/workflows/build.yml/badge.svg)](https://github.com/LozanoMatheus/asdf-aws-amplify-cli/actions/workflows/build.yml) [![Lint](https://github.com/LozanoMatheus/asdf-aws-amplify-cli/actions/workflows/lint.yml/badge.svg)](https://github.com/LozanoMatheus/asdf-aws-amplify-cli/actions/workflows/lint.yml)

[aws-amplify-cli](https://docs.amplify.aws/cli/) plugin for the [asdf version manager](https://asdf-vm.com).

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
asdf plugin add aws-amplify-cli
# or
asdf plugin add aws-amplify-cli https://github.com/LozanoMatheus/asdf-aws-amplify-cli.git
```

aws-amplify-cli:

```shell
# Show all installable versions
asdf list-all aws-amplify-cli

# Install specific version
asdf install aws-amplify-cli latest

# Set a version globally (on your ~/.tool-versions file)
asdf global aws-amplify-cli latest

# Now aws-amplify-cli commands are available
Please, check the official documentation in the section Commands Summary:
https://github.com/aws-amplify/amplify-cli#commands-summary
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/LozanoMatheus/asdf-aws-amplify-cli/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [LozanoMatheus](https://github.com/LozanoMatheus/)
