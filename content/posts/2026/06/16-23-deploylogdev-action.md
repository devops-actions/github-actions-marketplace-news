---
title: Publish to DeployLog
date: 2026-06-16 23:33:35 +00:00
tags:
  - deploylogdev
  - GitHub Actions
draft: false
repo: https://github.com/deploylogdev/action
marketplace: https://github.com/marketplace/actions/publish-to-deploylog
version: v1.1.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/deploylogdev/action** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/publish-to-deploylog) to find the latest changes.

## What's Changed

## What's new

- **`skip-prerelease` input** (optional, default `false`): skip GitHub prereleases (e.g. `v2.0.0-rc.1`) instead of publishing/notifying them like stable releases.
- Defensively `core.setSecret(api-key)` so the key is masked in logs even if passed as a literal.

The `v1` tag now points at this release.

```yaml
- uses: deploylogdev/action@v1
  with:
    api-key: ${{ secrets.DEPLOYLOG_API_KEY }}
    project: my-app
    skip-prerelease: true
```

🤖 Generated with [Claude Code](https://claude.com/claude-code)
