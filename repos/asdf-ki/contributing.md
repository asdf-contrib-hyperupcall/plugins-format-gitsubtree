# Contributing

Testing Locally:

```shell
asdf plugin test <plugin-name> <plugin-url> [--asdf-tool-version <version>] [--asdf-plugin-gitref <git-ref>] [test-command*]

#
asdf plugin test ki https://github.com/comdotlinux/asdf-ki.git "echo ':q' | ./bin/ki.sh -v 2> /dev/null | head -1"
```

Tests are automatically run in GitHub Actions on push and PR.
