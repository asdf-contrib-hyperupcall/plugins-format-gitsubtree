<div align="center">

# asdf-babashka ![Build](https://github.com/pitch-io/asdf-babashka/workflows/Build/badge.svg) ![Lint](https://github.com/pitch-io/asdf-babashka/workflows/Lint/badge.svg)

[babashka](https://github.com/borkdude/babashka) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

Note: this fork of Frederic Merizen's excellent asdf-babashka was created in order to fix an issue on Apple Silicon. Because the [original Github project](https://github.com/fredZen/asdf-babashka) wasn't updated in 2 years, we decided to fix the issue in this fork.

We intend to maintain this fork going forward – if you notice any problems please file an issue.

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
asdf plugin add babashka https://github.com/pitch-io/asdf-babashka.git
```

babashka:

```shell
# Show all installable versions
asdf list-all babashka

# Install specific version
asdf install babashka latest

# Set a version globally (on your ~/.tool-versions file)
asdf global babashka latest

# Now babashka commands are available
bb --version
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these fredZen contributors](https://github.com/fredZen/asdf-babashka/graphs/contributors)!
[Thanks to contributors in this repo](https://github.com/pitch-io/asdf-babashka/graphs/contributors)!

# License

Distributed under the [Eclipse Public License](LICENSE), the same as Babashka.
© [Frederic Merizen](https://github.com/fredZen/)
