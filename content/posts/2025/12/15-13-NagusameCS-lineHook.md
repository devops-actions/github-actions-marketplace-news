---
title: LineHook
date: 2025-12-15 13:17:00 +00:00
tags:
  - NagusameCS
  - GitHub Actions
draft: false
repo: https://github.com/NagusameCS/lineHook
marketplace: https://github.com/marketplace/actions/linehook
version: v1.0.5
dependentsNumber: "?"
---


Version updated for **https://github.com/NagusameCS/lineHook** to version **v1.0.5**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/linehook) to find the latest changes.

## Release notes

## What's New

### New Features
- **Uninstall Command**: Added `linehook uninstall` (or `linehook u`) to cleanly remove LineHook from your project
  - Removes `.linehook/` directory (config, badges, graphs)
  - Removes GitHub Action workflow (`.github/workflows/linehook.yml`)
  - Cleans up LineHook entries from `.gitignore`
  - Interactive confirmation (use `-y` to skip)
  - Automatically cleans up empty `.github` directories

### Usage
```bash
# Interactive uninstall
linehook uninstall

# Skip confirmation
linehook uninstall -y
```
