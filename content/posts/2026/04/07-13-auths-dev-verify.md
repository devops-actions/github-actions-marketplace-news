---
title: Verify with Auths
date: 2026-04-07 13:58:02 +00:00
tags:
  - auths-dev
  - GitHub Actions
draft: false
repo: https://github.com/auths-dev/verify
marketplace: https://github.com/marketplace/actions/verify-with-auths
version: v1.0.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/auths-dev/verify** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/verify-with-auths) to find the latest changes.

## Action Summary

The "Auths Verify Action" is a GitHub Action designed to automate the verification of commit signatures in pull requests or pushes using cryptographic keys managed by the Auths CLI. It ensures that every commit is signed by authorized developers, enhancing security and preventing unauthorized modifications. Key capabilities include automatic detection of commit ranges, detailed failure reporting, and optional posting of results to pull requests for better transparency and accountability.

## What's Changed

## Auths Verify GitHub Action

Verify commit signatures and artifact attestations in your CI pipeline using [Auths](https://github.com/auths-dev/auths) identity keys.

### Usage

```yaml
- uses: auths-dev/verify@v1
  with:
    token: '.auths/allowed_signers'
```

**New: Artifact verification**
```yaml
- uses: auths-dev/verify@v1
  with:
    token: $\{{ secrets.AUTHS_CI_TOKEN }}
    files: 'dist/*.tar.gz'
```

See the [README](https://github.com/auths-dev/verify#readme) for full configuration options.


**Full Changelog**: https://github.com/auths-dev/verify/compare/v1.0.0...v1.0.1
