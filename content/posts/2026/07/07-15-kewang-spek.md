---
title: spek - OpenSpec Static Site
date: 2026-07-07 15:27:13 +00:00
tags:
  - kewang
  - GitHub Actions
draft: false
repo: https://github.com/kewang/spek
marketplace: https://github.com/marketplace/actions/spek-openspec-static-site
version: v1.4.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/kewang/spek** to version **v1.4.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/spek-openspec-static-site) to find the latest changes.

## What's Changed

- Live-reload now works inside devcontainers and WSL. On filesystems that don't deliver native OS change events (9p / drvfs / NFS / CIFS / FUSE), spek automatically falls back to polling — so files created or edited after opening it are still detected. Detection is based on the watched path's filesystem type and needs no configuration; an optional `SPEK_WATCH_POLLING=on|off` escape hatch exists only if you ever need to force it. Applies to the Web, VS Code, and IntelliJ live variants. Thanks to @nthansen (Norman Hansen) for contributing this feature.

