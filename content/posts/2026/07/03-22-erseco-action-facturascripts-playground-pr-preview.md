---
title: FacturaScripts Playground PR Preview
date: 2026-07-03 22:15:07 +00:00
tags:
  - erseco
  - GitHub Actions
draft: false
repo: https://github.com/erseco/action-facturascripts-playground-pr-preview
marketplace: https://github.com/marketplace/actions/facturascripts-playground-pr-preview
version: v1.1.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/erseco/action-facturascripts-playground-pr-preview** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/facturascripts-playground-pr-preview) to find the latest changes.

## What's Changed

## What's new since v1.0.0

- feat: append-to-description publish mode + workflow_run/pr-number support (#13)
- feat: warn (advisory, non-blocking) when the preview URL risks HTTP 414, and document the mitigation in the README (#19)
- ci: verify-dist gate, dependabot-dist auto-rebuild, immutable-action publishing
- Various dependency bumps

All changes are backward compatible: new inputs default to the previous behavior, and the URL-length check only warns, it never fails the action. No breaking changes, so the `v1` tag is being moved to this release rather than cutting a v2.
