---
title: lftp FTPS Deploy
date: 2026-06-06 22:41:58 +00:00
tags:
  - PilarJ
  - GitHub Actions
draft: false
repo: https://github.com/PilarJ/lftp-ftps-deploy
marketplace: https://github.com/marketplace/actions/lftp-ftps-deploy
version: v1.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/PilarJ/lftp-ftps-deploy** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/lftp-ftps-deploy) to find the latest changes.

## What's Changed

## What's new

- **New input `max-retries`** (default `2`) — maps to lftp `net:max-retries`, previously hardcoded.
- **Auto-restart on `mirror: Fatal error: max-retries exceeded`** — when lftp gives up on a flaky connection, the whole incremental mirror restarts (up to 3 attempts total). Thanks to `--only-newer`, each rerun continues where the previous attempt died. Other errors still fail immediately.

```yaml
- uses: PilarJ/lftp-ftps-deploy@v1
  with:
    # ...
    max-retries: '3'   # optional, default 2
```

**Full Changelog**: https://github.com/PilarJ/lftp-ftps-deploy/compare/v1.0.0...v1.1.0
