<div align="center">

# asdf-bashbot [![Build](https://github.com/mathew-fleisch/asdf-bashbot/actions/workflows/build.yml/badge.svg)](https://github.com/mathew-fleisch/asdf-bashbot/actions/workflows/build.yml) [![Lint](https://github.com/mathew-fleisch/asdf-bashbot/actions/workflows/lint.yml/badge.svg)](https://github.com/mathew-fleisch/asdf-bashbot/actions/workflows/lint.yml)


[bashbot](https://github.com/mathew-fleisch/bashbot) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

# Contents

- [Dependencies](#dependencies)
- [Install](#install)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

- `bash`, `curl`: generic POSIX utilities.
- `SLACK_TOKEN`: set this environment variable to authenticate Bashbot with your Slack workspace
- `BASHBOT_CONFIG_FILEPATH`: set this environment variable to set the filepath + filename to the configuration json file
- config.json: See [examples directory](https://github.com/mathew-fleisch/bashbot/tree/main/examples) for examples of the configuration json

# Install

Plugin:

```shell
asdf plugin add bashbot
# or
asdf plugin add bashbot https://github.com/mathew-fleisch/asdf-bashbot.git
```

bashbot:

```shell
# Show all installable versions
asdf list-all bashbot

# Install specific version
asdf install bashbot latest

# Set a version globally (on your ~/.tool-versions file)
asdf global bashbot latest

# Now bashbot commands are available
bashbot version
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions of asdf plugins.

For more information about [bashbot](https://github.com/mathew-fleisch/bashbot), check the [bashbot-example repository](https://github.com/mathew-fleisch/bashbot-example) for deployment examples and the [examples directory](https://github.com/mathew-fleisch/bashbot/tree/main/examples) for configuration examples about extending Bashbot to your slack workspace.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/mathew-fleisch/asdf-bashbot/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Mathew Fleisch](https://github.com/mathew-fleisch/)
