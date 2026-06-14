---
title: Automated Release Compliance Governor
date: 2026-06-14 15:20:44 +00:00
tags:
  - etailory
  - GitHub Actions
draft: false
repo: https://github.com/etailory/automated-release-compliance-action
marketplace: https://github.com/marketplace/actions/automated-release-compliance-governor
version: v1.0.2
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/etailory/automated-release-compliance-action** to version **v1.0.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/automated-release-compliance-governor) to find the latest changes.

## What's Changed

## What's Changed

This patch release adjusts how the compliance action is wired into CI and how
consumers pin to it. There are no changes to the action runtime (`dist/`); the
behavior at this tag is identical to `v1.0.1`.

- **Release-triggered audits** — the bundled workflow now runs on
  `release: [published]` instead of on every push to `master`, so the action
  evaluates real release context (notes, linked issues/PRs) rather than a bare
  branch ref. See #72.
- **Floating `@v1` pin** — the workflow and the README/usage examples now
  reference `etailory/automated-release-compliance-action@v1`, so they pick up
  future `v1.0.x` patches automatically. See #73.
- **Changelog + version bump** to `1.0.2` capturing the above. See #74.

**Full Changelog**: https://github.com/etailory/automated-release-compliance-action/compare/v1.0.1...v1.0.2

