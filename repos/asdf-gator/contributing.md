# Contributing

Testing Locally:

```shell
asdf plugin test <plugin-name> <plugin-url> [--asdf-tool-version <version>] [--asdf-plugin-gitref <git-ref>] [test-command*]

#
asdf plugin test gator https://github.com/MxNxPx/asdf-gator.git "gator --help"
```

Tests are automatically run in GitHub Actions on push and PR.
