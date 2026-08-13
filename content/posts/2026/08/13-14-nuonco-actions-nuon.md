---
title: Nuon CLI
date: 2026-08-13 14:15:59 +00:00
tags:
  - nuonco
  - GitHub Actions
draft: false
repo: https://github.com/nuonco/actions-nuon
marketplace: https://github.com/marketplace/actions/nuon-cli
version: v0.4.3
dependentsNumber: "3"
actionType: Composite
actionSummary: |
  This GitHub Action automates the execution of Nuon CLI commands within CI/CD workflows, supporting both OIDC federation and API token authentication. It simplifies infrastructure management by integrating Nuon's capabilities directly into automated deployments. Users can configure and execute various Nuon CLI commands to manage organizations, apps, and installs within their GitHub Actions pipelines.
---


Version updated for **https://github.com/nuonco/actions-nuon** to version **v0.4.3**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/nuon-cli) to find the latest changes.

## Action Summary

This GitHub Action automates the execution of Nuon CLI commands within CI/CD workflows, supporting both OIDC federation and API token authentication. It simplifies infrastructure management by integrating Nuon's capabilities directly into automated deployments. Users can configure and execute various Nuon CLI commands to manage organizations, apps, and installs within their GitHub Actions pipelines.

## What's Changed

- chore: update the preflight cmd (#14) (4a13d66)
- chore: improved version selection (#13) (8b7d21c)
- fix: yaml syntax error in description (#12) (58da122)
- feat: support using oidc with the cli (#11) (500be20)
- feat: use --no-input flag (#8) (b144959)
- feat: Make input `command` optional, allowing for setup use cases (#7) (1c320c6)
- fix: The NUON_VERSION env var was not being picked up by install script (#6) (866d9e5)
- feat: Set `NUON_CONFIG_FILE` variable for subsequent steps (#4) (352448d)
- fix: Use the correct value for `NUON_VERSION` while installing (#5) (0d28fb9)
- chore: rename for publication (#3) (3cc58a1)
