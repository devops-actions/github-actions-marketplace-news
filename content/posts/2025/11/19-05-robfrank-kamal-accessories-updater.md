---
title: Kamal Accessories Updater
date: 2025-11-19 05:23:21 +00:00
tags:
  - robfrank
  - GitHub Actions
draft: false
repo: https://github.com/robfrank/kamal-accessories-updater
marketplace: https://github.com/marketplace/actions/kamal-accessories-updater
version: v25.11.2
dependentsNumber: "1"
---


Version updated for **https://github.com/robfrank/kamal-accessories-updater** to version **v25.11.2**.
- This action is used across all versions by **1** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/kamal-accessories-updater) to find the latest changes.

## Release notes

## What's Changed

- Update action.yml to use specific commit of create-pull-request action (935fbb8)
- Merge pull request #5 from robfrank/infra/add-pre-build-checks (ddcfb33)
- Add pre-build checks and configuration for pre-commit hooks (54f0894)
- Merge pull request #4 from robfrank/claude/add-docker-registry-support-011WXEv8yLYPdLuRrgtoRjk5 (ac43718)
- Update src/utils.sh (9b1c15e)
- Add support for multiple Docker registries including ghcr.io (7d009d6)

## Usage

To use this version in your workflows:

```yaml
- name: Update Kamal accessories
  uses: robfrank/kamal-accessories-updater@v25.11.2
  with:
    config-dir: config
    mode: update-all
```

**Full Changelog**: https://github.com/robfrank/kamal-accessories-updater/compare/...v25.11.2

