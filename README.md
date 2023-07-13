<div align="center">

# asdf-ki ![Build](https://github.com/comdotlinux/asdf-ki/workflows/Build/badge.svg) ![Lint](https://github.com/comdotlinux/asdf-ki/workflows/Lint/badge.svg)

[ki](https://blog.jetbrains.com/kotlin/2021/04/ki-the-next-interactive-shell-for-kotlin/) plugin for the [asdf version manager](https://asdf-vm.com).

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
asdf plugin add ki
# or
asdf plugin add ki https://github.com/comdotlinux/asdf-ki.git
```

ki:

```shell
# Show all installable versions
asdf list-all ki

# Install specific version
asdf install ki latest

# Set a version globally (on your ~/.tool-versions file)
asdf global ki latest

# Now ki commands are available
echo ':q' | ./bin/ki.sh -v 2> /dev/null | head -1
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/comdotlinux/asdf-ki/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Guruprasad Kulkarni](https://github.com/comdotlinux/)
