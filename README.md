# asdf-usql ![CI](https://github.com/itspngu/asdf-usql/workflows/CI/badge.svg) ![Lint](https://github.com/itspngu/asdf-usql/workflows/Lint/badge.svg)

[usql](https://github.com/xo/usql) plugin for the [asdf version manager](https://asdf-vm.com).

## ARCHIVAL NOTICE

I stopped using asdf-vm and archived this repository. If you're using this plugin, please consider forking the repository and having it added to the upstream plugin list at https://github.com/asdf-vm/asdf-plugins.

## Contents

- [Plugin Dependencies](#plugin-dependencies)
- [Install](#install)
- [License](#license)

## Plugin Dependencies

- `curl` - for usql downloads from upstream releases
- `icu4c` - [only on macOS](https://github.com/xo/usql#macos-notes), can be installed via `brew`

## Install

Plugin:

```shell_session
$ asdf plugin-add usql https://github.com/itspngu/asdf-usql
```

usql:

```shell_session
# Show all installable versions
$ asdf list-all usql

# Install specific version
$ asdf install usql latest

# Set a version globally (in your ~/.tool-versions file)
$ asdf global usql latest

# Run usql
$ usql --version
usql 0.9.5
```

Refer to the [upstream usql repository](https://github.com/xo/usql) for documentation and usage instructions.

Check the [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to install & manage versions.

## License

See [LICENSE](LICENSE)
