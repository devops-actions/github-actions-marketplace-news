---
title: Setup DepVault CLI
date: 2026-07-07 15:17:36 +00:00
tags:
  - suxrobGM
  - GitHub Actions
draft: false
repo: https://github.com/suxrobGM/depvault
marketplace: https://github.com/marketplace/actions/setup-depvault-cli
version: cli/v1.9.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/suxrobGM/depvault** to version **cli/v1.9.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-depvault-cli) to find the latest changes.

## What's Changed


- Zero-knowledge CI tokens: `DEPVAULT_TOKEN` now has the form `dvci_<auth>.<key>` — the CLI sends only the auth part to the server and derives the decryption key from the key part locally, so the server can never unwrap your project key. **Existing CI tokens must be regenerated** in the web dashboard
- Add a `doctor` command that checks server reachability, login, vault setup, active project, and encryption key, printing the exact next command for anything not ready
- `project info` now accepts a positional `[id]` argument (e.g. `depvault project info <id>`) in addition to `--project`
- Clearer guidance: point to the dashboard vault-setup URL when the vault isn't initialized, and make the encryption-key error honest that the CLI attempts creation automatically
- Support Windows and Linux ARM64 CI runners: the GitHub Action installs on Windows runners, and `linux-arm64` binaries are now published


