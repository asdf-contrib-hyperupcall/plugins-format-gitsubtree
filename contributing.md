# Contributing

Testing Locally:

```shell
asdf plugin test <plugin-name> <plugin-url> [--asdf-tool-version <version>] [--asdf-plugin-gitref <git-ref>] [test-command*]

#
asdf plugin test aws-sso-cli https://github.com/adamcrews/asdf-aws-sso-cli.git "aws-sso --help"
```

Tests are automatically run in GitHub Actions on push and PR.
