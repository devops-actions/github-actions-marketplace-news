---
title: Verify Commit Signatures with Auths
date: 2026-04-05 06:27:29 +00:00
tags:
  - auths-dev
  - GitHub Actions
draft: false
repo: https://github.com/auths-dev/auths-verify-github-action
marketplace: https://github.com/marketplace/actions/verify-commit-signatures-with-auths
version: v1.2.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/auths-dev/auths-verify-github-action** to version **v1.2.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/verify-commit-signatures-with-auths) to find the latest changes.

## Action Summary

The Auths Verify Action is a GitHub Action that automates the verification of commit signatures using cryptographic identity keys. It ensures that every commit in a pull request or push event is signed by authorized developers, helping teams enforce code integrity and prevent unauthorized changes. Key features include automatic detection of commit ranges, classification of verification failures, and detailed reporting with actionable fix instructions.

## What's Changed

## Auths Verify GitHub Action

Verify commit signatures and artifact attestations in your CI pipeline using [Auths](https://github.com/auths-dev/auths) identity keys.

### Usage

```yaml
- uses: auths-dev/auths-verify-github-action@v1.2.1
  with:
    allowed-signers: '.auths/allowed_signers'
```

**New: Artifact verification**
```yaml
- uses: auths-dev/auths-verify-github-action@v1.2.1
  with:
    identity-bundle: 
    artifact-paths: 'dist/*.tar.gz'
```

See the [README](https://github.com/auths-dev/auths-verify-github-action#readme) for full configuration options.


**Full Changelog**: https://github.com/auths-dev/auths-verify-github-action/compare/v1.2.0...v1.2.1
