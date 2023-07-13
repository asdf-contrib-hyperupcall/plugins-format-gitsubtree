# Contributing

Testing Locally:

```shell
asdf plugin test <plugin-name> <plugin-url> [--asdf-tool-version <version>] [--asdf-plugin-gitref <git-ref>] [test-command*]

#
asdf plugin test vultr-cli https://github.com/ikuradon/asdf-vultr-cli.git "vultr-cli --help"
```

Tests are automatically run in GitHub Actions on push and PR.
