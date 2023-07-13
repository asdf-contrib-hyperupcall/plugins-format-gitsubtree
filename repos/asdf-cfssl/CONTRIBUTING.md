# Contributing

Testing Locally:

```shell
# asdf plugin test <plugin-name> <plugin-url> [--asdf-tool-version <version>] [--asdf-plugin-gitref <git-ref>] [test-command*]
asdf plugin test cfssl https://github.com/mathew-fleisch/asdf-cfssl.git "cfssl version"
# Example output:
# Version: 1.6.0
# Runtime: go1.12.12
```

Tests are automatically run in GitHub Actions on push and PR and on a nightly cron.