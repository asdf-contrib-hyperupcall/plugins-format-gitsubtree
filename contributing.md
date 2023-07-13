# Contributing

Testing Locally:

```shell
asdf plugin test <plugin-name> <plugin-url> [--asdf-tool-version <version>] [--asdf-plugin-gitref <git-ref>] [test-command*]

#
asdf plugin test kcat https://github.com/douglasdgoulart/asdf-kcat.git "kcat -h"
```

Tests are automatically run in GitHub Actions on push and PR.
