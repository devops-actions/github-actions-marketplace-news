---
title: Deploy to ZWRM
date: 2026-06-27 22:08:33 +00:00
tags:
  - zwrm-eu
  - GitHub Actions
draft: false
repo: https://github.com/zwrm-eu/deploy-action
marketplace: https://github.com/marketplace/actions/deploy-to-zwrm
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/zwrm-eu/deploy-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/deploy-to-zwrm) to find the latest changes.

## What's Changed

Initial release.

Composite action that installs the `zwrm` CLI (pinned version or `latest`, checksum-verified) and runs `zwrm deploy`. No Docker required on the runner — the control plane builds server-side.

Usage:
```yaml
- uses: zwrm-eu/deploy-action@v1
  with:
    api-token: ${{ secrets.ZWRM_API_TOKEN }}
    org-id: my-org
```

Supports Linux and macOS runners (X64/ARM64). See the README for all inputs.
