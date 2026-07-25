---
title: ReleasePilot Guard
date: 2026-07-25 00:21:42 +00:00
tags:
  - releasepilot
  - GitHub Actions
draft: false
repo: https://github.com/releasepilot/releasepilot-guard
marketplace: https://github.com/marketplace/actions/releasepilot-guard
version: v0.3.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  **ReleasePilot Guard** is a GitHub Action designed to assess the release impact of pull requests in Expo projects. It evaluates changes and provides a safety classification (OTA_safe, native_build_required, etc.) based on Git history and project configurations. This helps ensure that only safe updates are merged, reducing potential risks associated with dynamic or unverified code changes.
---


Version updated for **https://github.com/releasepilot/releasepilot-guard** to version **v0.3.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/releasepilot-guard) to find the latest changes.

## Action Summary

**ReleasePilot Guard** is a GitHub Action designed to assess the release impact of pull requests in Expo projects. It evaluates changes and provides a safety classification (OTA_safe, native_build_required, etc.) based on Git history and project configurations. This helps ensure that only safe updates are merged, reducing potential risks associated with dynamic or unverified code changes.

## What's Changed

## First public release

ReleasePilot Guard is a conservative release-impact checker for Expo applications.

It analyzes a pull-request Git range and classifies the safest release route as:

- OTA safe
- Native build required
- Backend or configuration dependency
- Store metadata only
- No app release required
- Manual review

### Included

- Reusable composite GitHub Action
- Real Git-range analysis
- Nested Expo monorepo support
- Dependency and lockfile detection
- Static Expo and EAS configuration comparison
- Machine-readable evidence report
- Conservative handling of unknown changes

### Validation

Tested against 25 pinned commit ranges from five public Expo repositories:

- 22/25 automatically classified
- 6/6 reviewed OTA-safe classifications correct
- Zero unsafe changes labeled OTA-safe

ReleasePilot is advisory by default and does not deploy applications or execute untrusted pull-request code.
