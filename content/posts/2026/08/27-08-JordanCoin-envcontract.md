---
title: EnvContract for Vercel
date: 2026-08-27 08:05:24 +00:00
tags:
  - JordanCoin
  - GitHub Actions
draft: false
repo: https://github.com/JordanCoin/envcontract
marketplace: https://github.com/marketplace/actions/envcontract-for-vercel
version: v1.0.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  EnvContract is a GitHub Action that ensures that any environment variables used in your Vercel deployment are correctly configured. It checks if the code requires specific environment variables and compares them with the ones configured in your Vercel project, failing the PR if there's a mismatch. The action provides detailed reports on missing or incorrect configurations and can be integrated into workflows to ensure your deployments are robust.
---


Version updated for **https://github.com/JordanCoin/envcontract** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/envcontract-for-vercel) to find the latest changes.

## Action Summary

EnvContract is a GitHub Action that ensures that any environment variables used in your Vercel deployment are correctly configured. It checks if the code requires specific environment variables and compares them with the ones configured in your Vercel project, failing the PR if there's a mismatch. The action provides detailed reports on missing or incorrect configurations and can be integrated into workflows to ensure your deployments are robust.

## What's Changed

Marketplace listing release. Same engine as v1.0.0 (1,255 tests); the action.yml description was shortened to meet the Marketplace limit.

```yaml
- uses: JordanCoin/envcontract@v1
  with:
    vercel_token: ${{ secrets.VERCEL_TOKEN }}
    target: preview
```
