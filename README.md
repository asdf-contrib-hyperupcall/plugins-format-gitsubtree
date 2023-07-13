<h1 align="center">
  <br>
  <a href="http://github.com/asdf-community/asdf-dasel"><img src="./assets/logo.png" alt="dasel" width="200px" /></a>
  <br>
  asdf Dasel plugin
  <br>
</h1>

<h4 align="center">asdf-dasel ☸️</h4>

<p align="center">
  <a href="#introduction">Introduction</a> •
  <a href="#getting-started">Getting Started</a> •
  <a href="#roadmap">Roadmap</a>
</p>

## 👋 Introduction

This is the asdf-plugin for [dasel](https://github.com/tomwright/dasel).

## ⚡️ Getting Started

```bash
asdf plugin add dasel https://github.com/asdf-community/asdf-dasel.git

asdf list all dasel

# we use `main` for our trunk git branch, asdf defaults to "master" though, so you need to manually specify main
asdf plugin update dasel main
```

**NOTE: Versions before 0.12.1 will not be installable through this plugin due to a change in the release process to support `uname` platform detection.
