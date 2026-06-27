---
title: Setup Roc
date: 2026-06-27 22:15:47 +00:00
tags:
  - roc-lang
  - GitHub Actions
draft: false
repo: https://github.com/roc-lang/setup-roc
marketplace: https://github.com/marketplace/actions/setup-roc
version: v0.3.0
dependentsNumber: "10"
actionType: Composite
---


Version updated for **https://github.com/roc-lang/setup-roc** to version **v0.3.0**.

- This action is used across all versions by **10** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-roc) to find the latest changes.

## What's Changed

Support setting of a specific nightly version using `nightly-tag`:
```yaml
- uses: roc-lang/setup-roc@cbe782d6f165b89c87d99f50a59ac4f5f73b4427
  with:
    version: nightly-new-compiler
    nightly-tag: nightly-2026-June-27-127861d # remove nightly-tag to just get the latest one
```
