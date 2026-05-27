---
title: Nuon CLI
date: 2026-05-27 06:33:40 +00:00
tags:
  - nuonco
  - GitHub Actions
draft: false
repo: https://github.com/nuonco/actions-nuon
marketplace: https://github.com/marketplace/actions/nuon-cli
version: v0.3.0
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/nuonco/actions-nuon** to version **v0.3.0**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/nuon-cli) to find the latest changes.

## Action Summary

The Nuon GitHub Action integrates Nuon's CLI into CI/CD workflows, enabling automated execution of infrastructure management commands. It simplifies tasks such as authentication, CLI installation, and configuration, allowing users to manage Nuon resources directly within GitHub Actions. This action is ideal for automating deployment, synchronization, and other operational tasks tied to Nuon's platform.

## What's Changed

- feat: use --no-input flag (#8) (b144959)
- feat: Make input `command` optional, allowing for setup use cases (#7) (1c320c6)
- fix: The NUON_VERSION env var was not being picked up by install script (#6) (866d9e5)
- feat: Set `NUON_CONFIG_FILE` variable for subsequent steps (#4) (352448d)
- fix: Use the correct value for `NUON_VERSION` while installing (#5) (0d28fb9)
- chore: rename for publication (#3) (3cc58a1)
- chore: noop changes: trigger version bump (#2) (2769fe0)
- chore: github action (#1) (8a9ea15)
- Initial commit (c3fe348)
