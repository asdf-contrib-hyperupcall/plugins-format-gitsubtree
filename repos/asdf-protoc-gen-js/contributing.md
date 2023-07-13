# Contributing

Testing Locally:

```shell
asdf plugin test <plugin-name> <plugin-url> [--asdf-tool-version <version>] [--asdf-plugin-gitref <git-ref>] [test-command*]

#
asdf plugin test protoc-gen-js https://github.com/pbr0ck3r/asdf-protoc-gen-js.git "protoc-gen-js --version"
```

Tests are automatically run in GitHub Actions on push and PR.
