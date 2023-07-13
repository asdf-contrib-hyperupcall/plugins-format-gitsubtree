# Contributing

Testing Locally:

```shell
asdf plugin test <plugin-name> <plugin-url> [--asdf-tool-version <version>] [--asdf-plugin-gitref <git-ref>] [test-command*]

#
asdf plugin test k3sup https://github.com/cgroschupp/asdf-k3sup.git "k3sup --help"
```

Tests are automatically run in GitHub Actions on push and PR.
