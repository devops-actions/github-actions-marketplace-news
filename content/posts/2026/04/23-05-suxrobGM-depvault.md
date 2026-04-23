---
title: Setup DepVault CLI
date: 2026-04-23 05:54:11 +00:00
tags:
  - suxrobGM
  - GitHub Actions
draft: false
repo: https://github.com/suxrobGM/depvault
marketplace: https://github.com/marketplace/actions/setup-depvault-cli
version: cli/v1.6.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/suxrobGM/depvault** to version **cli/v1.6.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-depvault-cli) to find the latest changes.

## Action Summary

DepVault is a comprehensive web platform designed to analyze dependencies across multiple programming ecosystems, identify vulnerabilities via OSV.dev, and securely manage environment variables and secret files using AES-256-GCM encryption. It addresses the challenges of dependency management, secret storage, and secure sharing by automating tasks like vulnerability detection, license compliance checks, and CI/CD secret injection. Key features include multi-language dependency scanning, encrypted vaults with version history, secret sharing via auto-expiring links, and developer tools for configuration management and onboarding.

## What's Changed


- Flatten vault model: drop the vault-group / environment abstraction so each vault is a single flat keyset, and retarget pull/push to a vault directly instead of selecting a group + environment
- Replace the old `FileEnvironmentAssigner` / `DirectoryVaultGroupMapper` flow with a new directory-to-vault mapper that infers file-to-vault assignments from the directory structure on `push`
- Suggest tags on `push` via `TagSuggester` to help categorize imported variables
- Regenerate the Kiota API client against the flattened backend OpenAPI spec


