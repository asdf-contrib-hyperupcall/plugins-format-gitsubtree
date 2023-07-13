# Contributing

Testing Locally:

```shell
asdf plugin test <plugin-name> <plugin-url> [--asdf-tool-version <version>] [--asdf-plugin-gitref <git-ref>] [test-command*]

#
asdf plugin test psc-package https://github.com/nsaunders/asdf-psc-package.git "psc-package --help"
```

Tests are automatically run in GitHub Actions on push and PR.
