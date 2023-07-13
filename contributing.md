# Contributing

Testing Locally:

```shell
asdf plugin test <plugin-name> <plugin-url> [--asdf-tool-version <version>] [--asdf-plugin-gitref <git-ref>] [test-command*]

#
asdf plugin test titan https://github.com/Gabitchov/asdf-titan.git "titan --version"
```

Tests are automatically run in GitHub Actions on push and PR.
