# Contributing

Testing Locally:

```shell
asdf plugin test <plugin-name> <plugin-url> [--asdf-tool-version <version>] [--asdf-plugin-gitref <git-ref>] [test-command*]

#
asdf plugin test kubelogin https://github.com/sechmann/asdf-kubelogin.git "kubelogin --version"
```

Tests are automatically run in GitHub Actions on push and PR.
