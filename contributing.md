# Contributing

Testing Locally:

```shell
asdf plugin test <plugin-name> <plugin-url> [--asdf-tool-version <version>] [--asdf-plugin-gitref <git-ref>] [test-command*]

#
asdf plugin test kompose https://github.com/technikhil314/asdf-kompose.git "kompose --help"
```

Tests are automatically run in GitHub Actions on push and PR.
