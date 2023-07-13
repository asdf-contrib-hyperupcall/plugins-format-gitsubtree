[![Test](https://github.com/eko/asdf-tctl/actions/workflows/test.yml/badge.svg)](https://github.com/eko/asdf-tctl/actions/workflows/test.yml)

# asdf-tctl

[tctl](https://github.com/temporalio/tctl) plugin for [asdf](https://github.com/asdf-vm/asdf) version manager.

## Installation

```bash
$ asdf plugin-add tctl https://github.com/eko/asdf-tctl.git
$ asdf list all tctl
$ asdf install tctl latest
```

## Usage

Check out the [asdf documentation](https://asdf-vm.com/#/core-manage-versions?id=install-version) for instructions on how to install and manage versions.

## Architecture Override

The `ASDF_TCTL_OVERWRITE_ARCH` variable can be used to override the architecture that is used for determining which `tctl` build to download. The primary use case is when attempting to install an older version of `tctl` for use on an Apple M1 computer as `tctl` was not built for ARM at the time.

### Without `ASDF_TCTL_OVERWRITE_ARCH`:

```
$ asdf install tctl 1.17.2
```

### With `ASDF_TCTL_OVERWRITE_ARCH`:

```
$ ASDF_TCTL_OVERWRITE_ARCH=arm64 asdf install tctl 1.17.2
```

