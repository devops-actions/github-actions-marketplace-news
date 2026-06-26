---
title: Setup DepVault CLI
date: 2026-06-26 07:14:44 +00:00
tags:
  - suxrobGM
  - GitHub Actions
draft: false
repo: https://github.com/suxrobGM/depvault
marketplace: https://github.com/marketplace/actions/setup-depvault-cli
version: cli/v1.8.5
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/suxrobGM/depvault** to version **cli/v1.8.5**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-depvault-cli) to find the latest changes.

## What's Changed


- `unlock --remember [--ttl 7d]`: optionally persist the derived KEK (never the password) encrypted at rest — DPAPI on Windows, an owner-only AES-GCM key on POSIX — so the vault stays unlocked across invocations without retyping the password (default 7d, max 30d); `lock`/`logout` clear it
- Add a `purge` command: the inverse of `pull`, deleting previously pulled files from disk; previews and confirms (defaults to No), requires `--force` non-interactively, and supports `--dry-run`/`--no-prune`


