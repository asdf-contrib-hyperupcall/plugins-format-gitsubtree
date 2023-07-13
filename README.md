<div align="center">

# asdf-mdbook-linkcheck [![Build](https://github.com/cipherstash/asdf-mdbook-linkcheck/actions/workflows/test.yml/badge.svg)](https://github.com/cipherstash/asdf-mdbook-linkcheck/actions/workflows/test.yml)

[mdbook-linkcheck](https://github.com/Michael-F-Bryan/mdbook-linkcheck) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

# Contents

- [Dependencies](#dependencies)
- [Install](#install)
- [Why?](#why)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

- `bash`, `curl`: generic POSIX utilities.
- `unzip`: because of course.

# Install

Plugin:

```shell
asdf plugin add mdbook-linkcheck
# or
asdf plugin add mdbook-linkcheck https://github.com/cipherstash/asdf-mdbook-linkcheck.git
```

mdbook-linkcheck:

```shell
# Show all installable versions
asdf list-all mdbook-linkcheck

# Install specific version
asdf install mdbook-linkcheck latest

# Set a version globally (on your ~/.tool-versions file)
asdf global mdbook-linkcheck latest

# Now you can specify mdbook-linkcheck in your book.toml
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# License

See [LICENSE](LICENSE) © 2021 [CipherStash Inc.](https://github.com/cipherstash/)
