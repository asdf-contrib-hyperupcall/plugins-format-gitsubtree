# Contributing

Testing Locally:

```shell
asdf plugin test <plugin-name> <plugin-url> [--asdf-tool-version <version>] [--asdf-plugin-gitref <git-ref>] [test-command*]

#
asdf plugin test liqoctl https://github.com/pdemagny/asdf-liqoctl.git "liqoctl version --client"
```

Tests are automatically run in GitHub Actions on push and PR.
