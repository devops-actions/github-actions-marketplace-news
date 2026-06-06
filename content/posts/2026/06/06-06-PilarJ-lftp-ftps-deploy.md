---
title: lftp FTPS Deploy
date: 2026-06-06 06:32:18 +00:00
tags:
  - PilarJ
  - GitHub Actions
draft: false
repo: https://github.com/PilarJ/lftp-ftps-deploy
marketplace: https://github.com/marketplace/actions/lftp-ftps-deploy
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/PilarJ/lftp-ftps-deploy** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/lftp-ftps-deploy) to find the latest changes.

## What's Changed

## lftp FTPS Deploy

Incremental FTPS deploy via lftp for servers that require **TLS session reuse on the data channel** (ProFTPD shared hostings), where other FTP deploy actions fail with `ECONNRESET`.

### Features
- ✅ Certificate **and** hostname verification stay enabled by default
- 🔗 Bundled Let's Encrypt CA chain — fixes servers sending leaf-only certificates
- 🏷 `cert-host` /etc/hosts alias — hostname verification works even when the server cert is a one-level wildcard that can't cover the FTP hostname (RFC 6125)
- ⚡ Truly incremental: `mirror --only-newer` + `git restore-mtime` (files keep last-commit dates)
- 🛡 Never deletes remote files (no `--delete`), credentials via `.netrc` + `::add-mask::`
- 🔧 Opt-in `debug` and (loudly warned) `insecure-tls` escape hatch

See [README](https://github.com/PilarJ/lftp-ftps-deploy#readme) for usage.
