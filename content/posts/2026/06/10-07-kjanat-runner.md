---
title: Setup runner cli
date: 2026-06-10 07:06:28 +00:00
tags:
  - kjanat
  - GitHub Actions
draft: false
repo: https://github.com/kjanat/runner
marketplace: https://github.com/marketplace/actions/setup-runner-cli
version: v0.12.2
dependentsNumber: "5"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/kjanat/runner** to version **v0.12.2**.

- This action is used across all versions by **5** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-runner-cli) to find the latest changes.

## What's Changed

### Fixed

- `runner completions` now detects PowerShell when `$SHELL` is unset or
  unrecognized by falling back to the presence of `$PSModulePath`, which
  pwsh exports on every platform (it never sets `$SHELL`). A recognized
  `$SHELL` still takes precedence, so a pwsh session launched from bash
  keeps completing for the login shell. Previously bare
  `runner completions` always errored under pwsh.

**Full Changelog**: https://github.com/kjanat/runner/compare/v0.12.1...v0.12.2

