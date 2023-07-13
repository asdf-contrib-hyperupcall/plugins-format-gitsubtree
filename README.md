<div align="center">

# asdf-mdbook [![Build](https://github.com/cipherstash/asdf-mdbook/actions/workflows/test.yml/badge.svg)](https://github.com/cipherstash/asdf-mdbook/actions/workflows/test.yml)

[mdbook](https://github.com/rust-lang/mdBook) plugin for the [asdf version manager](https://asdf-vm.com).

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
asdf plugin add mdbook
# or
asdf plugin add mdbook https://github.com/cipherstash/asdf-mdbook.git
```

mdbook:

```shell
# Show all installable versions
asdf list-all mdbook

# Install specific version
asdf install mdbook latest

# Set a version globally (on your ~/.tool-versions file)
asdf global mdbook latest

# Now mdbook is available
mdbook build|serve|help|etc
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# License

See [LICENSE](LICENSE) © 2021 [CipherStash Inc.](https://github.com/cipherstash/)
