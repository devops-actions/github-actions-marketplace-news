---
title: TrigGuard Authorization
date: 2026-06-24 07:02:02 +00:00
tags:
  - TrigGuard-AI
  - GitHub Actions
draft: false
repo: https://github.com/TrigGuard-AI/authorize
marketplace: https://github.com/marketplace/actions/trigguard-authorization
version: v1
dependentsNumber: "2"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/TrigGuard-AI/authorize** to version **v1**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/trigguard-authorization) to find the latest changes.

## What's Changed

# TrigGuard Authorization

Gate deploys, migrations, and other irreversible CI steps with cryptographic receipts.

## Install

```yaml
- uses: TrigGuard-AI/authorize@v1
  with:
    surface: deploy.release
    gateway_url: https://api.trigguardai.com
    repository: ${{ github.repository }}
```

## Observe mode

```yaml
    execution_mode: observe
```

Check output `would-decision` during policy rollout.

## Docs

Full README: https://github.com/TrigGuard-AI/authorize#readme

## License

MIT — see [LICENSE](https://github.com/TrigGuard-AI/authorize/blob/main/LICENSE)
