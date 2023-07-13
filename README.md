<div align="center">

# asdf-pipectl [![Build](https://github.com/pipe-cd/asdf-pipectl/actions/workflows/build.yml/badge.svg)](https://github.com/pipe-cd//asdf-pipectl/actions/workflows/build.yml) [![Lint](https://github.com/pipe-cd/asdf-pipectl/actions/workflows/lint.yml/badge.svg)](https://github.com/pipe-cd/asdf-pipectl/actions/workflows/lint.yml)

[pipectl](https://github.com/pipe-cd/pipecd) plugin for the [asdf version manager](https://asdf-vm.com).

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
```
asdf plugin add pipectl
# or
asdf plugin add pipectl https://github.com/pipe-cd/asdf-pipectl.git
```

pipectl:
```
# Show all installable versions
asdf list-all pipectl

# Install specific version
asdf install pipectl latest

# Set a version globally (on your ~/.tool-versions file)
asdf global pipectl latest

# Now pipectl commands are available
pipectl --help
```

Please check [asdf](https://github.com/asdf-vm/asdf#readme) for more instructions on how to
install and manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/pipe-cd/asdf-pipectl/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [pipe-cd](https://github.com/pipe-cd/)
