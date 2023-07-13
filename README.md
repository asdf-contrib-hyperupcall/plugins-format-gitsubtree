# cosign asdf Plugin

![Build Status](https://gitlab.com/wt0f/asdf-cosign/badges/main/pipeline.svg)

This is the plugin repo for [asdf-vm/asdf](https://github.com/asdf-vm/asdf.git)
to manage [sigstore/cosign](https://github.com/sigstore/cosign).

## Install

After installing [asdf](https://github.com/asdf-vm/asdf),
you can add this plugin like this:

```bash
asdf plugin add cosign
asdf install cosign 1.3.0
asdf global cosign 1.3.0
```

Each binary that is installed is validated against the signature of the
binary from the release. If the validation of the signature fails, the
binary will be removed to prevent a malicious binary from being used.
