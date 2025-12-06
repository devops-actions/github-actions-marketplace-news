---
title: Resolve Azure SWA Environment
date: 2025-12-04 12:35:22 +00:00
tags:
  - jamesconsultingllc
  - GitHub Actions
draft: false
repo: https://github.com/jamesconsultingllc/resolve-swa-environment-action
marketplace: https://github.com/marketplace/actions/resolve-azure-swa-environment
version: v1
dependentsNumber: "?"
---


Version updated for **https://github.com/jamesconsultingllc/resolve-swa-environment-action** to version **v1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/resolve-azure-swa-environment) to find the latest changes.

## Release notes

Resolve Azure Static Web App deployment environments from branch names.

### Features
- GitFlow branch pattern support (main, develop, feature/*, release/*, hotfix/*)
- Custom branch-to-slot mappings via JSON
- Automatic source environment detection for settings sync
- Preview environment identification
- Branch name sanitization (alphanumeric, lowercase, max 20 chars)

### Usage
```yaml
- uses: jamesconsultingllc/resolve-swa-environment-action@v1
