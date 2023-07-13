# asdf-goss

[![plugin test](https://github.com/raimon49/asdf-goss/workflows/plugin%20test/badge.svg)](https://github.com/raimon49/asdf-goss/actions/workflows/asdf.yml)
[![Build Status](https://travis-ci.org/raimon49/asdf-goss.svg?branch=master)](https://travis-ci.org/raimon49/asdf-goss)

[Goss](https://goss.rocks) as a server testing tool plugin for [asdf version manager](https://asdf-vm.com/)

## Installation

```bash
$ asdf plugin add goss
```

## Usage

```bash
# Install any version of Goss
$ asdf install goss 0.3.6

# Set the version of Goss you want
$ asdf global goss 0.3.6
$ goss --version
goss version v0.3.6
```

**Note:** alpha support for macOS/Windows has been available on a trial basis [since v0.3.12](https://github.com/aelsabbahy/goss/releases/tag/v0.3.12). This plugin will be downloaded with the keyword "-alpha" as a definite keyword for now. See also) [P-R #1](https://github.com/raimon49/asdf-goss/pull/1)

## License

[MIT License](LICENSE)
