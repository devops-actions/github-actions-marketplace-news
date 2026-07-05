---
title: pslrm Bump Action
date: 2026-07-05 14:57:30 +00:00
tags:
  - krymtkts
  - GitHub Actions
draft: false
repo: https://github.com/krymtkts/pslrm-bump-action
marketplace: https://github.com/marketplace/actions/pslrm-bump-action
version: v0.0.2
dependentsNumber: "7"
actionType: Composite
---


Version updated for **https://github.com/krymtkts/pslrm-bump-action** to version **v0.0.2**.

- This action is used across all versions by **7** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pslrm-bump-action) to find the latest changes.

## What's Changed

### Added

- Add `skip-psresourceget-install` input to skip PSResourceGet installation.

### Changed

- Avoid unconditional `Microsoft.PowerShell.PSResourceGet` install. Check if version `1.0.1`+ exists.
- Create bump commits through GitHub's Git Database API so GitHub can mark them as verified.

### Notes

- Documentation now recommends `GITHUB_TOKEN` for most repositories.
  GitHub now allows workflows to run for approved pull requests created by
  `github-actions[bot]`.
  Use a PAT when subsequent workflows must run automatically without human
    approval.

