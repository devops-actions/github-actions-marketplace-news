---
title: gw - Go workspaces
date: 2026-07-15 06:37:58 +00:00
tags:
  - Toyz
  - GitHub Actions
draft: false
repo: https://github.com/Toyz/gw
marketplace: https://github.com/marketplace/actions/gw-go-workspaces
version: v0.1.1
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  `gw` automates the management of Go workspaces by generating and maintaining `go.work`, lints cross-module dependency versions, and runs commands across every module. It solves the problem of managing multiple Go modules in a workspace, providing tools like `init`, `sync`, and `lint` to bootstrap, update, and validate the workspace configuration.
---


Version updated for **https://github.com/Toyz/gw** to version **v0.1.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gw-go-workspaces) to find the latest changes.

## Action Summary

`gw` automates the management of Go workspaces by generating and maintaining `go.work`, lints cross-module dependency versions, and runs commands across every module. It solves the problem of managing multiple Go modules in a workspace, providing tools like `init`, `sync`, and `lint` to bootstrap, update, and validate the workspace configuration.

## What's Changed

Patch release: renames the GitHub Action (`action.yml` `name`) to **"gw - Go workspaces"** so it can be published to the GitHub Marketplace — the Marketplace requires a globally-unique action name and plain `gw` collided.

**Metadata only — no change to the `gw` binary or the `gwext` SDK.** Everything in [v0.1.0](https://github.com/toyz/gw/releases/tag/v0.1.0) applies.

## Install

```sh
go install github.com/toyz/gw@v0.1.1
```

## Use in CI

```yaml
- uses: actions/setup-go@v5
  with: { go-version: stable }
- uses: toyz/gw@v0.1.1
  with:
    command: doctor --strict
```

Full docs: **https://toyz.github.io/gw/**

