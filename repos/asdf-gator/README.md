<div align="center">

# asdf-gator [![Build](https://github.com/MxNxPx/asdf-gator/actions/workflows/build.yml/badge.svg)](https://github.com/MxNxPx/asdf-gator/actions/workflows/build.yml) [![Lint](https://github.com/MxNxPx/asdf-gator/actions/workflows/lint.yml/badge.svg)](https://github.com/MxNxPx/asdf-gator/actions/workflows/lint.yml)


[gator](https://open-policy-agent.github.io/gatekeeper/website/docs/next/gator) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

# Contents

- [Dependencies](#dependencies)
- [Install](#install)
- [Why?](#why)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

- `bash`, `curl`, `tar`: generic POSIX utilities.
- `SOME_ENV_VAR`: set this environment variable in your shell config to load the correct version of tool x.

# Install

Plugin:

```shell
asdf plugin add gator
# or
asdf plugin add gator https://github.com/MxNxPx/asdf-gator.git
```

gator:

```shell
# Show all installable versions
asdf list-all gator

# Install specific version
asdf install gator latest

# Set a version globally (on your ~/.tool-versions file)
asdf global gator latest

# Now gator commands are available
gator --help
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/MxNxPx/asdf-gator/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Palassis](https://github.com/MxNxPx/)
