---
title: Create GitHub App Token (AWS KMS)
date: 2026-04-07 13:56:38 +00:00
tags:
  - konippi
  - GitHub Actions
draft: false
repo: https://github.com/konippi/create-github-app-token-aws-kms
marketplace: https://github.com/marketplace/actions/create-github-app-token-aws-kms
version: v1.0.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/konippi/create-github-app-token-aws-kms** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/create-github-app-token-aws-kms) to find the latest changes.

## Action Summary

This GitHub Action, **Create GitHub App Token (AWS KMS)**, generates installation access tokens for GitHub Apps using AWS Key Management Service (KMS) for secure JWT signing. It eliminates the need to store private keys in GitHub Secrets by delegating JWT signing to the AWS KMS `Sign` API, ensuring private keys remain securely within the HSM boundary. This action automates token creation and management while enforcing least-privilege permissions for enhanced security and compliance.

## What's Changed

## What's Changed
* fix: add git config for update-major-tag workflow by @konippi in https://github.com/konippi/create-github-app-token-aws-kms/pull/16
* fix(deps): update vite from v8.0.3 to v8.0.5 by @konippi in https://github.com/konippi/create-github-app-token-aws-kms/pull/17
* fix(dist): the consistency of dist by @konippi in https://github.com/konippi/create-github-app-token-aws-kms/pull/1

**Full Changelog**: https://github.com/konippi/create-github-app-token-aws-kms/compare/v1...v1.0.1
