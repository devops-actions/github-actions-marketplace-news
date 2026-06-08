---
title: airlock audit
date: 2026-06-08 15:24:22 +00:00
tags:
  - smakarim
  - GitHub Actions
draft: false
repo: https://github.com/smakarim/airlock
marketplace: https://github.com/marketplace/actions/airlock-audit
version: v0.1.2
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/smakarim/airlock** to version **v0.1.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/airlock-audit) to find the latest changes.

## What's Changed

Shortens the composite Action description to satisfy the GitHub Marketplace 125-character limit. No CLI behavior change from v0.1.0.

### Use as a GitHub Action
```yaml
- uses: smakarim/airlock@v0.1.2
  with:
    base: /tmp/base-lock.json
    head: package-lock.json
    fail-on: high
```

### Install the CLI
```sh
go install github.com/smakarim/airlock/cmd/airlock@v0.1.2
```
