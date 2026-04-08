---
title: Create GitHub App Token (AWS KMS)
date: 2026-04-08 06:22:24 +00:00
tags:
  - konippi
  - GitHub Actions
draft: false
repo: https://github.com/konippi/create-github-app-token-aws-kms
marketplace: https://github.com/marketplace/actions/create-github-app-token-aws-kms
version: v1.0.2
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/konippi/create-github-app-token-aws-kms** to version **v1.0.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/create-github-app-token-aws-kms) to find the latest changes.

## Action Summary

This GitHub Action generates scoped installation access tokens for GitHub Apps by securely signing JSON Web Tokens (JWT) using AWS Key Management Service (KMS). It eliminates the need to store private keys in GitHub Secrets, enhancing security by keeping private keys within the AWS KMS boundary. By automating token creation and enforcing least-privilege permissions, the action streamlines GitHub App authentication workflows for repositories or organizations.

## What's Changed

## What's Changed
* fix: update v1 commit hash in README by @konippi in https://github.com/konippi/create-github-app-token-aws-kms/pull/19
* fix: use cjs for esbuild output to resolve ESM/CJS mismatch on Node.j… by @konippi in https://github.com/konippi/create-github-app-token-aws-kms/pull/21


**Full Changelog**: https://github.com/konippi/create-github-app-token-aws-kms/compare/v1...v1.0.2
