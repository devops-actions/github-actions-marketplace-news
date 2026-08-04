---
title: Nuon CLI
date: 2026-08-04 22:34:34 +00:00
tags:
  - nuonco
  - GitHub Actions
draft: false
repo: https://github.com/nuonco/actions-nuon
marketplace: https://github.com/marketplace/actions/nuon-cli
version: v0.4.1
dependentsNumber: "3"
actionType: Composite
actionSummary: |
  **Summary**: This GitHub Action automates the execution of Nuon CLI commands within CI/CD workflows. It supports two authentication methods: OIDC federation or API token, making it easy to integrate Nuon's infrastructure management into existing projects. The action provides flexibility in configuring and executing Nuon commands based on user needs, with options for specifying Org ID, app ID, API URL, and OAuth audience.
---


Version updated for **https://github.com/nuonco/actions-nuon** to version **v0.4.1**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/nuon-cli) to find the latest changes.

## Action Summary

**Summary**: This GitHub Action automates the execution of Nuon CLI commands within CI/CD workflows. It supports two authentication methods: OIDC federation or API token, making it easy to integrate Nuon's infrastructure management into existing projects. The action provides flexibility in configuring and executing Nuon commands based on user needs, with options for specifying Org ID, app ID, API URL, and OAuth audience.

## What's Changed

- fix: yaml syntax error in description (#12) (58da122)
- feat: support using oidc with the cli (#11) (500be20)
- feat: use --no-input flag (#8) (b144959)
- feat: Make input `command` optional, allowing for setup use cases (#7) (1c320c6)
- fix: The NUON_VERSION env var was not being picked up by install script (#6) (866d9e5)
- feat: Set `NUON_CONFIG_FILE` variable for subsequent steps (#4) (352448d)
- fix: Use the correct value for `NUON_VERSION` while installing (#5) (0d28fb9)
- chore: rename for publication (#3) (3cc58a1)
- chore: noop changes: trigger version bump (#2) (2769fe0)
- chore: github action (#1) (8a9ea15)
