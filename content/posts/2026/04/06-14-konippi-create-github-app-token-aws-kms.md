---
title: Create GitHub App Token (AWS KMS)
date: 2026-04-06 14:05:33 +00:00
tags:
  - konippi
  - GitHub Actions
draft: false
repo: https://github.com/konippi/create-github-app-token-aws-kms
marketplace: https://github.com/marketplace/actions/create-github-app-token-aws-kms
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/konippi/create-github-app-token-aws-kms** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/create-github-app-token-aws-kms) to find the latest changes.

## Action Summary

This GitHub Action automates the creation of installation access tokens for GitHub Apps by leveraging AWS KMS for secure JWT signing. It eliminates the need to store private keys in GitHub Secrets by using AWS's `Sign` API, ensuring that private keys remain securely within the HSM boundary. This approach enhances security and simplifies token management for workflows requiring scoped access to repositories.

## What's Changed

- chore: update action refs and branding (#15) (85ab26c)
- refactor: use string argument in replaceAll instead of regex (#14) (5feae1a)
- fix: prevent script injection in update-major-tag workflow (#13) (f6b02c2)
- ci: add workflow to update major version tag on release (#12) (c924e85)
- refactor: use getUserInstallation API for direct installation lookup (#11) (39d1b47)
- docs: add SECURITY.md with vulnerability reporting policy (#10) (4d3a1d2)
- chore: fix fromat in vscode settings (#9) (5bc9372)
- chore: add community settings (#8) (3543019)
- chore: fix README and tests (ba3ab90)
- Merge branch 'main' of github.com:konippi/create-github-app-token-aws-kms (d4da8ae)
