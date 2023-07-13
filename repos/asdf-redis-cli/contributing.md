# Contributing

Testing Locally:

```shell
asdf plugin test <plugin-name> <plugin-url> [--asdf-tool-version <version>] [--asdf-plugin-gitref <git-ref>] [test-command*]

#
asdf plugin test redis-cli https://github.com/NeoHsu/asdf-redis-cli.git "redis-cli --version"
```

Tests are automatically run in GitHub Actions on push and PR.
