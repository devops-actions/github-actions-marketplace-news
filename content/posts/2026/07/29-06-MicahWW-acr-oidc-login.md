---
title: Azure Container Registry OIDC Login
date: 2026-07-29 06:51:28 +00:00
tags:
  - MicahWW
  - GitHub Actions
draft: false
repo: https://github.com/MicahWW/acr-oidc-login
marketplace: https://github.com/marketplace/actions/azure-container-registry-oidc-login
version: v1.1.2
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action simplifies logging into an Azure Container Registry (ACR) using OIDC and ensures best setup. It requires setting up federated identity credentials, user permissions, and workflow permissions. The action automates the login process by using Docker's built-in `login-action` post step to log out of the CLI after a workflow job completes.
---


Version updated for **https://github.com/MicahWW/acr-oidc-login** to version **v1.1.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/azure-container-registry-oidc-login) to find the latest changes.

## Action Summary

This GitHub Action simplifies logging into an Azure Container Registry (ACR) using OIDC and ensures best setup. It requires setting up federated identity credentials, user permissions, and workflow permissions. The action automates the login process by using Docker's built-in `login-action` post step to log out of the CLI after a workflow job completes.

## What's Changed

## What's Changed
* Bump actions/checkout from 6 to 7 by @dependabot[bot] in https://github.com/MicahWW/acr-oidc-login/pull/5
* Bump docker/login-action from 4.1.0 to 4.5.0 by @dependabot[bot] in https://github.com/MicahWW/acr-oidc-login/pull/8


**Full Changelog**: https://github.com/MicahWW/acr-oidc-login/compare/v1.1.1...v1.1.2
