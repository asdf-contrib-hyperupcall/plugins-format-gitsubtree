# asdf-helm-cr
<div align="center">

![GitHub Actions Status](https://github.com/Antiarchitect/asdf-helm-cr/workflows/Test/badge.svg?branch=master)

[Helm Chart Releaser](https://github.com/helm/chart-releaser) plugin for [asdf](https://github.com/asdf-vm/asdf) version manager.

</div>

# Contents

- [Dependencies](#dependencies)
- [Install](#install)
- [License](#license)

# Dependencies

- `bash`, `curl`, `tar`: generic POSIX utilities.

# Install

Plugin:

```shell
asdf plugin add helm-cr
# or
asdf plugin add helm-cr https://github.com/Antiarchitect/asdf-helm-cr.git
```

helm-cr:

```shell
# Show all installable versions
asdf list-all helm-cr

# Install specific version
asdf install helm-cr latest

# Set a version globally (on your ~/.tool-versions file)
asdf global helm-cr latest

# Now cr commands are available
cr version
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# License

See [LICENSE](LICENSE) © [Andrey Voronkov](https://github.com/Antiarchitect/)
