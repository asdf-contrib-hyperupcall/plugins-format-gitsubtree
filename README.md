<div align="center">

# asdf-ejson [![Build](https://github.com/cipherstash/asdf-ejson/actions/workflows/build.yml/badge.svg)](https://github.com/cipherstash/asdf-ejson/actions/workflows/build.yml) [![Lint](https://github.com/cipherstash/asdf-ejson/actions/workflows/lint.yml/badge.svg)](https://github.com/cipherstash/asdf-ejson/actions/workflows/lint.yml)


[ejson](https://github.com/Shopify/ejson) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

# Contents

- [Dependencies](#dependencies)
- [Install](#install)
- [Why?](#why)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

- `bash`, `curl`: generic POSIX utilities.

# Install

Plugin:

```shell
asdf plugin add ejson
# or
asdf plugin add ejson https://github.com/cipherstash/asdf-ejson.git
```

ejson:

```shell
# Show all installable versions
asdf list-all ejson

# Install specific version
asdf install ejson latest

# Set a version globally (on your ~/.tool-versions file)
asdf global ejson latest

# Now ejson commands are available
ejson keygen|encrypt|etc
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# License

See [LICENSE](LICENSE) © 2021 [CipherStash Inc.](https://github.com/cipherstash/)
