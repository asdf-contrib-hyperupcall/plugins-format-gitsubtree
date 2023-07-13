# Contributing

Testing Locally:

```shell
asdf plugin test <plugin-name> <plugin-url> [--asdf-tool-version <version>] [--asdf-plugin-gitref <git-ref>] [test-command*]

#
asdf plugin test bashbot https://github.com/mathew-fleisch/asdf-bashbot.git "bashbot --version"
```

Tests are automatically run in GitHub Actions on push and PR.
