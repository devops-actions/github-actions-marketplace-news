---
title: Build CheckMK MKP Package
date: 2026-08-17 21:50:00 +00:00
tags:
  - oposs
  - GitHub Actions
draft: false
repo: https://github.com/oposs/mkp-builder
marketplace: https://github.com/marketplace/actions/build-checkmk-mkp-package
version: v2.2.2
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action automates the creation of Checkmk MKP packages from local plugin directories, supporting customizable build options and syntax validation. It provides a fast and reusable workflow that can be easily integrated into CI/CD pipelines. The action outputs package information for easy artifact upload, ensuring no permanent changes to the repository.
---


Version updated for **https://github.com/oposs/mkp-builder** to version **v2.2.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-checkmk-mkp-package) to find the latest changes.

## Action Summary

This GitHub Action automates the creation of Checkmk MKP packages from local plugin directories, supporting customizable build options and syntax validation. It provides a fast and reusable workflow that can be easily integrated into CI/CD pipelines. The action outputs package information for easy artifact upload, ensuring no permanent changes to the repository.

## What's Changed

### Changed
- Renamed the release workflows for what they actually do: `Release` →
  **Create release PR** (`create-release-pr.yml`) and `Publish release` →
  **Release publisher** (`release-publisher.yml`). Since 2.2.1 split the release in two,
  the old names read like two ways to do the same thing, when only one is ever the right
  button to press.
- **Release publisher** no longer has a `workflow_dispatch` trigger. Publishing should be
  a consequence of merging a release PR, not something anyone can start from a dropdown;
  with `main` protected against direct pushes, merging a PR that changes `plugin.json` is
  now the only route to a release. This costs no recovery: a failed run is re-run from the
  Actions UI regardless of trigger, and because the version is read from `plugin.json`
  rather than from run inputs, a re-run is faithful to the original attempt.

## What's Changed
* Name the release workflows for what they do; publishing is not hand-fireable by @oetiker in https://github.com/oposs/mkp-builder/pull/10
* Release v2.2.2 by @github-actions[bot] in https://github.com/oposs/mkp-builder/pull/11


**Full Changelog**: https://github.com/oposs/mkp-builder/compare/v2.2.1...v2.2.2
