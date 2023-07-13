# asdf-flyway

[flyway](https://github.com/flyway/flyway) binary plugin for [asdf](https://github.com/asdf-vm/asdf)

## Install

### Plugin

```sh
asdf plugin add flyway
# or
asdf plugin add flyway https://github.com/junminahn/asdf-flyway.git
```

### flyway

```sh
# List all versions of a package
asdf list all flyway

# Install a specific version of a package
asdf install flyway <version>

# Install the latest stable version
asdf install flyway latest

# Set the package global version
asdf global flyway <version>

# Check the version
flyway --version
```

Please check [asdf](https://github.com/asdf-vm/asdf) for more details.

# License

See [LICENSE](LICENSE) ©[Junmin Ahn](https://github.com/junminahn/)
