---
title: soliconfig config/secrets
date: 2026-07-27 22:53:51 +00:00
tags:
  - vennyx-org
  - GitHub Actions
draft: false
repo: https://github.com/vennyx-org/soliconfig-config-action
marketplace: https://github.com/marketplace/actions/soliconfig-config-secrets
version: v0.1.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action automates the process of loading Soliconfig configuration and secrets during CI/CD pipelines, making them accessible as environment variables or files. It supports both server-side and local decryption options and ensures sensitive information is masked in logs for security.
---


Version updated for **https://github.com/vennyx-org/soliconfig-config-action** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/soliconfig-config-secrets) to find the latest changes.

## Action Summary

This GitHub Action automates the process of loading Soliconfig configuration and secrets during CI/CD pipelines, making them accessible as environment variables or files. It supports both server-side and local decryption options and ensures sensitive information is masked in logs for security.

## What's Changed

Initial public release of the soliconfig config/secrets GitHub Action.

```yaml
- uses: vennyx-org/soliconfig-config-action@v1
  with:
    api-key: ${{ secrets.SOLICONFIG_API_KEY }}
```

Pulls soliconfig config/secrets at CI time and exposes them to later steps via $GITHUB_ENV, a file, or a step output — with automatic log masking. Pin `@v0.1.0` for immutability or track `@v1` for the latest v1.x.
