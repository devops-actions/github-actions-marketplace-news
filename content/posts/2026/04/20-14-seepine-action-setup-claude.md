---
title: action-setup-claude
date: 2026-04-20 14:29:22 +00:00
tags:
  - seepine
  - GitHub Actions
draft: false
repo: https://github.com/seepine/action-setup-claude
marketplace: https://github.com/marketplace/actions/action-setup-claude
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/seepine/action-setup-claude** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/action-setup-claude) to find the latest changes.

## Action Summary

The `action-setup-claude` GitHub Action streamlines the installation and setup of the Claude CLI in CI workflows, with optional configuration of Anthropic-related environment variables. It automates caching of the CLI binary and configuration directories to reduce installation time, ensures the CLI is readily accessible via the system path, and outputs the installed version for verification. This action simplifies the integration of Claude capabilities while improving efficiency during CI processes.

## What's Changed

- feat(action): add cache-key input and update cache configuration (9e8f4b4)
- refactor(action): remove version output and reorder steps (4b94d67)
- chore: init (118fb49)
