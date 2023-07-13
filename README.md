<div align="center">

# asdf-weave-gitops [![Build](https://github.com/deas/asdf-weave-gitops/actions/workflows/build.yml/badge.svg)](https://github.com/deas/asdf-weave-gitops/actions/workflows/build.yml) [![Lint](https://github.com/deas/asdf-weave-gitops/actions/workflows/lint.yml/badge.svg)](https://github.com/deas/asdf-weave-gitops/actions/workflows/lint.yml)


[weave-gitops](https://github.com/weaveworks/weave-gitops) plugin for the [asdf version manager](https://asdf-vm.com).

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
asdf plugin add weave-gitops
# or
asdf plugin add weave-gitops https://github.com/deas/asdf-weave-gitops.git
```

weave-gitops:

```shell
# Show all installable versions
asdf list-all weave-gitops

# Install specific version
asdf install weave-gitops latest

# Set a version globally (on your ~/.tool-versions file)
asdf global weave-gitops latest

# Now weave-gitops commands are available
gitops --help
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/deas/asdf-weave-gitops/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Andreas Steffan](https://github.com/deas/)
