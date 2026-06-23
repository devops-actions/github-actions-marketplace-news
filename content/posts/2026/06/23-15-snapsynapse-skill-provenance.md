---
title: Skill Provenance Validate
date: 2026-06-23 15:00:06 +00:00
tags:
  - snapsynapse
  - GitHub Actions
draft: false
repo: https://github.com/snapsynapse/skill-provenance
marketplace: https://github.com/marketplace/actions/skill-provenance-validate
version: v4.13.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/snapsynapse/skill-provenance** to version **v4.13.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skill-provenance-validate) to find the latest changes.

## What's Changed

## 4.13.1 - 2026-06-23

GitHub Actions Marketplace prep release for Skill Provenance.

### Changes
- Added a root `action.yml` composite action so Skill Provenance can be published in GitHub Actions Marketplace.
- The action runs `skill-provenance/validate.sh` against a configurable bundle path.
- Updated CI to use the local action, so the Marketplace wrapper is exercised on push and PR validation.
- Documented Marketplace usage in `README.md`.
- Added the new GitHub Actions surface to `AGENTIC_SURFACES.md`.

### Usage
```yaml
steps:
  - uses: actions/checkout@v4
  - uses: snapsynapse/skill-provenance@v4.13.1
    with:
      bundle-path: skill-provenance
```

### Verification
- YAML parse for action.yml and .github/workflows/validate.yml: pass
- Local action command path: pass
- ./skill-provenance/validate.sh: pass
- ./.github/scripts/release-surface-check.sh: pass
- GitHub CI on main: pass

**Note**
The skill bundle itself remains at 4.13.0. This is a repo-level distribution release for GitHub Actions Marketplace support.
