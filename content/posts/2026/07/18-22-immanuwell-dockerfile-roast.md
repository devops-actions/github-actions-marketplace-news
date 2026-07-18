---
title: droast — Dockerfile linter
date: 2026-07-18 22:45:54 +00:00
tags:
  - immanuwell
  - GitHub Actions
draft: false
repo: https://github.com/immanuwell/dockerfile-roast
marketplace: https://github.com/marketplace/actions/droast-dockerfile-linter
version: 1.4.2
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The GitHub Action `droast-dockerfile-linter` automates Dockerfile linting by identifying and reporting bad practices, providing feedback in a non-polite manner. It supports various parsing capabilities, including handling heredocs, parser directives, shell forms, BuildKit flags, Windows paths, PowerShell, and custom ignore files to ensure accurate detection of issues.
---


Version updated for **https://github.com/immanuwell/dockerfile-roast** to version **1.4.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/droast-dockerfile-linter) to find the latest changes.

## Action Summary

The GitHub Action `droast-dockerfile-linter` automates Dockerfile linting by identifying and reporting bad practices, providing feedback in a non-polite manner. It supports various parsing capabilities, including handling heredocs, parser directives, shell forms, BuildKit flags, Windows paths, PowerShell, and custom ignore files to ensure accurate detection of issues.

## What's Changed

- chore: release version 1.4.2 (e3e9589)
- feat: publish crates.io packages for release tags (b6a8870)
- fix: prepare version 1.4.1 for Cargo installation (43e49e4)
- chore: update the Docker metadata action runtime (650622f)
- fix: publish Docker images for amd64 and arm64 (6597993)
- feat: support explicit configuration file paths (ccb62bc)
- fix: parse apt assume-yes options and package pins correctly (f2799d4)
- fix: recognize apt-get distclean as package-list cleanup (ecd341d)
- fix: avoid matching prefixed package managers as npm (362e8ef)
- fix: parse FROM options and inherited stage state correctly (6b42247)
