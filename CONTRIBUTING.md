# Contributing

Testing locally:

```shell
asdf plugin test <plugin-name> <plugin-url> [--asdf-tool-version <version>] [--asdf-plugin-gitref <git-ref>] [test-command*]

# E.g., to test the currently-released version:
asdf plugin test goconvey https://github.com/therounds-contrib/asdf-goconvey.git "goconvey -help"

# Or to test against a local commit:
asdf plugin test goconvey ./.git --asdf-plugin-gitref main "goconvey -help"
```

Tests are automatically run in GitHub Actions on push and PR.
