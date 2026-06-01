---
title: Setup DepVault CLI
date: 2026-06-01 23:43:20 +00:00
tags:
  - suxrobGM
  - GitHub Actions
draft: false
repo: https://github.com/suxrobGM/depvault
marketplace: https://github.com/marketplace/actions/setup-depvault-cli
version: cli/v1.7.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/suxrobGM/depvault** to version **cli/v1.7.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-depvault-cli) to find the latest changes.

## What's Changed


- Encrypt secret files client-side on `push` and upload as JSON — fixes 400 errors and closes a zero-knowledge plaintext leak
- `push`: aggregate stale-variable detection per vault to stop false "delete stale" prompts on first push
- `push`: map directories to vaults by path + name only (drop greedy tag-match that merged unrelated folders)
- `pull`: preserve blank lines between comment groups so `.env` files round-trip faithfully
- Cancel selection and multi-select prompts on Esc; pre-select all choices by default (`push` selects all discovered files — deselect to skip)
- Stale-variable deletion now defaults to No and is skipped in non-interactive mode
- `auth`: clear vault keys on logout and give clearer locked-vault guidance
- Update package references to latest versions


