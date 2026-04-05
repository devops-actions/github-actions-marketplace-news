---
title: Simple Vault Action
date: 2026-04-05 22:00:27 +00:00
tags:
  - kdihalas
  - GitHub Actions
draft: false
repo: https://github.com/kdihalas/vault-action
marketplace: https://github.com/marketplace/actions/simple-vault-action
version: v2.0.0
dependentsNumber: "0"
actionType: Docker
---


Version updated for **https://github.com/kdihalas/vault-action** to version **v2.0.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/simple-vault-action) to find the latest changes.

## Action Summary

This GitHub Action enables seamless authentication to HashiCorp Vault using GitHub's OpenID Connect (OIDC) provider and automates the retrieval of secrets for workflows. It addresses the challenge of securely managing secrets and dynamic credentials by supporting features like Vault KV v2 secret fetching, AWS and Kubernetes dynamic credentials generation, and masked outputs for sensitive values. By eliminating external dependencies, it simplifies integration with Vault for secure and efficient CI/CD pipelines.

## What's Changed

## [2.0.0](https://github.com/kdihalas/vault-action/compare/v1.0.0...v2.0.0) (2026-04-05)


### ⚠ BREAKING CHANGES

* add Kubernetes secret support and refactor

### Features

* add Kubernetes secret support and refactor ([06e5e4f](https://github.com/kdihalas/vault-action/commit/06e5e4f66173ec8961e5a0d9669de45f60aa72d0))
