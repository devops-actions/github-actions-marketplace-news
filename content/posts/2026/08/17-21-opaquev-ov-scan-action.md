---
title: ov-scan
date: 2026-08-17 21:52:21 +00:00
tags:
  - opaquev
  - GitHub Actions
draft: false
repo: https://github.com/opaquev/ov-scan-action
marketplace: https://github.com/marketplace/actions/ov-scan
version: v1.0.3
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action runs the `ov scan` tool to detect leaked secrets in a repository's working tree and git history. It ensures that only verified or critical findings are reported, and it optionally allows users to verify and rotate OV binary versions. The action is designed to catch secrets before they reach production environments by running `ov scan` on pull requests.
---


Version updated for **https://github.com/opaquev/ov-scan-action** to version **v1.0.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ov-scan) to find the latest changes.

## Action Summary

This GitHub Action runs the `ov scan` tool to detect leaked secrets in a repository's working tree and git history. It ensures that only verified or critical findings are reported, and it optionally allows users to verify and rotate OV binary versions. The action is designed to catch secrets before they reach production environments by running `ov scan` on pull requests.

## What's Changed

**License change:** MIT → Business Source License 1.1 (Change Date **2030-05-06**, Change License Apache-2.0). The Additional Use Grant permits production use by any organization, regardless of size, for invoking `ov scan` against repositories under your control in CI or local workflows. Tags v1.0.0–v1.0.2 were released under MIT and remain MIT. See [LICENSE](https://github.com/opaquev/ov-scan-action/blob/v1.0.3/LICENSE) and the [plain-language guide](https://opaquevault.com/docs/license). No functional changes; the `v1` floating tag now points here.
