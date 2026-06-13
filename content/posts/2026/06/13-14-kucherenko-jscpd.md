---
title: jscpd-copy-paste-detector
date: 2026-06-13 14:48:30 +00:00
tags:
  - kucherenko
  - GitHub Actions
draft: false
repo: https://github.com/kucherenko/jscpd
marketplace: https://github.com/marketplace/actions/jscpd-copy-paste-detector
version: v5.0.9
dependentsNumber: "4,230"
actionType: Composite
---


Version updated for **https://github.com/kucherenko/jscpd** to version **v5.0.9**.

- This action is used across all versions by **4,230** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/jscpd-copy-paste-detector) to find the latest changes.

## What's Changed

### New Features

- GitHub Action for jscpd (Rust v5) — `jscpd-copy-paste-detector` action for GitHub Actions Marketplace. Scan your repo for copy/paste in CI with `uses: kucherenko/jscpd/.github/workflows/action.yml@v5`

### Bug Fixes

- Resolve platform binary resolution when `cpd` is installed as a nested dependency (e.g. in a project's `node_modules` via a parent package). The runner now correctly locates the platform-specific binary relative to the installed package rather than assuming a top-level install. Fixes [#816](https://github.com/kucherenko/jscpd/issues/816)
