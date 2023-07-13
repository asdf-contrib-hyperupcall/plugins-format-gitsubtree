# Contributing

Testing Locally:

```shell
asdf plugin test <plugin-name> <plugin-url> [--asdf-tool-version <version>] [--asdf-plugin-gitref <git-ref>] [test-command*]

#
asdf plugin test carthage https://github.com/younke/asdf-carthage.git "carthage test"
```

Tests are automatically run in GitHub Actions on push and PR.
