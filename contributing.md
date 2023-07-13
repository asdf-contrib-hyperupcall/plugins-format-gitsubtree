# Contributing

Testing Locally:

```shell
asdf plugin test <plugin-name> <plugin-url> [--asdf-tool-version <version>] [--asdf-plugin-gitref <git-ref>] [test-command*]

#
asdf plugin test figma-export https://github.com/younke/asdf-figma-export.git "figma-export --version"
```

Tests are automatically run in GitHub Actions on push and PR.
