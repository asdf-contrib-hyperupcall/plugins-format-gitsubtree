# asdf-semtag

[Semtag](https://github.com/nico2sh/semtag) binary plugin for [asdf](https://github.com/asdf-vm/asdf)

## Install

### Plugin

```sh
asdf plugin add semtag
# or
asdf plugin add semtag https://github.com/junminahn/asdf-semtag.git
```

### semtag

```sh
# List all versions of a package
asdf list all semtag

# Install a specific version of a package
asdf install semtag <version>

# Install the latest stable version
asdf install semtag latest

# Set the package global version
asdf global semtag <version>

# Check the version
semtag --version
```

Please check [asdf](https://github.com/asdf-vm/asdf) for more details.

# License

See [LICENSE](LICENSE) ©[Junmin Ahn](https://github.com/junminahn/)
