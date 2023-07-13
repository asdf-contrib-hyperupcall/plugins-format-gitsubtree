<div align="center">

# asdf-aws-sso-cli [![Build](https://github.com/adamcrews/asdf-aws-sso-cli/actions/workflows/build.yml/badge.svg)](https://github.com/adamcrews/asdf-aws-sso-cli/actions/workflows/build.yml) [![Lint](https://github.com/adamcrews/asdf-aws-sso-cli/actions/workflows/lint.yml/badge.svg)](https://github.com/adamcrews/asdf-aws-sso-cli/actions/workflows/lint.yml)


[aws-sso-cli](https://github.com/synfinatic/aws-sso-cli/) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

# Contents

- [asdf-aws-sso-cli  ](#asdf-aws-sso-cli--)
- [Contents](#contents)
- [Dependencies](#dependencies)
- [Install](#install)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

- None

# Install

Plugin:

```shell
asdf plugin add aws-sso-cli
# or
asdf plugin add aws-sso-cli https://github.com/adamcrews/asdf-aws-sso-cli.git
```

aws-sso-cli:

```shell
# Show all installable versions
asdf list-all aws-sso-cli

# Install specific version
asdf install aws-sso-cli latest

# Set a version globally (on your ~/.tool-versions file)
asdf global aws-sso-cli latest

# Now aws-sso-cli commands are available
aws-sso --help
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/adamcrews/asdf-aws-sso-cli/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Adam Crews](https://github.com/adamcrews/)
