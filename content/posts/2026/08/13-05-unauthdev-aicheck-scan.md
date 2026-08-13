---
title: aicheck-scan
date: 2026-08-13 05:37:43 +00:00
tags:
  - unauthdev
  - GitHub Actions
draft: false
repo: https://github.com/unauthdev/aicheck-scan
marketplace: https://github.com/marketplace/actions/aicheck-scan
version: v2.0.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action, aicheck-scan, prevents coding-agent credential files from being committed to version control by failing the build if such files are detected. It uses a predefined list of file paths and checks for their presence in the repository before allowing a successful commit. The action can be integrated into CI workflows to automate this check.
---


Version updated for **https://github.com/unauthdev/aicheck-scan** to version **v2.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aicheck-scan) to find the latest changes.

## Action Summary

This GitHub Action, aicheck-scan, prevents coding-agent credential files from being committed to version control by failing the build if such files are detected. It uses a predefined list of file paths and checks for their presence in the repository before allowing a successful commit. The action can be integrated into CI workflows to automate this check.

## What's Changed

Breaking for the GitHub Action only. The CLI is unchanged.

Root Action is now `aicheck agents`. No network. No `target` input.

```
- uses: actions/checkout@v4
- uses: unauthdev/aicheck-scan@v2
```

Live-probe moved to `uses: unauthdev/aicheck-scan/scan@v2` (still needs `target:`).
`uses: unauthdev/aicheck-scan/agents@v2` is an alias of the root Action.
`@v1` is frozen leftover live-probe. Do not move that tag.

SHA256 sums are appended below by the publish workflow.

## SHA256

```
74b589cdeb6d8bb4db224e0e5e46290516d53aafeb484d07497796ac29e69746  aicheck_scan-2.0.0-py3-none-any.whl
e1f59f945f341ae28c1b08423be6ab15594cd088bfb9846c484f1b3520fb93ac  aicheck_scan-2.0.0.tar.gz
```

