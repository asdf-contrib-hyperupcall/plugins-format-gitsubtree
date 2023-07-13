# fd asdf Plugin

![Build Status](https://gitlab.com/wt0f/asdf-fd/badges/master/pipeline.svg)

This is the plugin repo for [asdf-vm/asdf](https://github.com/asdf-vm/asdf.git)
to manage [sharkdp/fd](https://github.com/sharkdp/fd.git).

## Install

After installing [asdf](https://github.com/asdf-vm/asdf),
you can add this plugin like this:

```bash
asdf plugin add fd
asdf install fd 7.4.0
asdf global fd 7.4.0
fd --type f .conf /etc
`````
