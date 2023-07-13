# Contributing

Testing Locally:

```shell
asdf plugin test <plugin-name> <plugin-url> [--asdf-tool-version <version>] [--asdf-plugin-gitref <git-ref>] [test-command*]

#
asdf plugin test datree https://github.com/lukeab/asdf-datree.git "datree version"
```

Tests are automatically run in GitHub Actions on push and PR.
