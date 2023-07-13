# Contributing

Testing Locally:

```shell
asdf plugin test <plugin-name> <plugin-url> [--asdf-tool-version <version>] [--asdf-plugin-gitref <git-ref>] [test-command*]

#
asdf plugin test hurl https://github.com/raimon49/asdf-hurl.git "hurl --version"
```

Tests are automatically run in GitHub Actions on push and PR.
