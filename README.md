<div align="center">

# asdf-apollo-router [![Build](https://github.com/safx/asdf-apollo-router/actions/workflows/build.yml/badge.svg)](https://github.com/safx/asdf-apollo-router/actions/workflows/build.yml) [![Lint](https://github.com/safx/asdf-apollo-router/actions/workflows/lint.yml/badge.svg)](https://github.com/safx/asdf-apollo-router/actions/workflows/lint.yml)


[apollo-router](https://www.apollographql.com/docs/router/) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

# Contents

- [Dependencies](#dependencies)
- [Install](#install)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

- `bash`, `curl`, `tar`: generic POSIX utilities.
- `SOME_ENV_VAR`: set this environment variable in your shell config to load the correct version of tool x.

# Install

Plugin:

```shell
asdf plugin add apollo-router
# or
asdf plugin add apollo-router https://github.com/safx/asdf-apollo-router.git
```

apollo-router:

```shell
# Show all installable versions
asdf list-all apollo-router

# Install specific version
asdf install apollo-router latest

# Set a version globally (on your ~/.tool-versions file)
asdf global apollo-router latest

# Now apollo-router commands are available
router --version
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/safx/asdf-apollo-router/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Yuji Matsumoto](https://github.com/safx/)
