<div align="center">

# asdf-mongosh ![CI](https://github.com/itspngu/asdf-mongosh/workflows/CI/badge.svg) ![Lint](https://github.com/itspngu/asdf-mongosh/workflows/Lint/badge.svg)

[mongosh](https://github.com/mongodb-js/mongosh) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

## ARCHIVAL NOTICE

I stopped using asdf-vm and archived this repository. If you're using this plugin, please consider forking the repository and having it added to the upstream plugin list at https://github.com/asdf-vm/asdf-plugins.

## Contents

- [Plugin Dependencies](#plugin-dependencies)
- [Install](#install)
- [License](#license)

## Plugin Dependencies

- `curl` - for mongosh downloads from upstream releases

## Install

Plugin:

```shell
$ asdf plugin-add mongosh https://github.com/itspngu/asdf-mongosh
```

mongosh:

```shell
# Show all installable versions
$ asdf list-all mongosh

# Install specific version
$ asdf install mongosh latest

# Set a version globally (in your ~/.tool-versions file)
$ asdf global mongosh latest
```

Refer to the [upstream mongosh repository](https://github.com/mongodb-js/mongosh) for documentation and
usage instructions of the included tools.

Check the [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

## License

See [LICENSE](LICENSE)
