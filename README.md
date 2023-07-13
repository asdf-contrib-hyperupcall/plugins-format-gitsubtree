<div align="center">

# asdf-k3sup ![Build](https://github.com/cgroschupp/asdf-k3sup/workflows/Build/badge.svg) ![Lint](https://github.com/cgroschupp/asdf-k3sup/workflows/Lint/badge.svg)

[k3sup](https://github.com/alexellis/k3sup) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

# Contents

- [asdf-k3sup !Build ![Lint](https://github.com/cgroschupp/asdf-k3sup/workflows/Lint/badge.svg)](#asdf-k3sup--)
- [Contents](#contents)
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
asdf plugin add k3sup
# or
asdf plugin add https://github.com/cgroschupp/asdf-k3sup.git
```

k3sup:

```shell
# Show all installable versions
asdf list-all k3sup

# Install specific version
asdf install k3sup latest

# Set a version globally (on your ~/.tool-versions file)
asdf global k3sup latest

# Now k3sup commands are available
k3sup --help
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/cgroschupp/asdf-k3sup/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Christian Groschupp](https://github.com/cgroschupp/)
