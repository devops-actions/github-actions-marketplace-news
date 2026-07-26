---
title: ReleasePilot Guard
date: 2026-07-26 06:43:25 +00:00
tags:
  - releasepilot
  - GitHub Actions
draft: false
repo: https://github.com/releasepilot/releasepilot-guard
marketplace: https://github.com/marketplace/actions/releasepilot-guard
version: v0.3.2
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  **ReleasePilot Guard** is a GitHub Action that automatically checks if an Expo pull request can be released through Expo Updates, requires new native binaries, depends on backend or runtime configuration changes, or still needs human review. It provides a clear and conservative approach to release impact analysis with evidence-based results, ensuring safe adoption of OTA updates in real repositories.
---


Version updated for **https://github.com/releasepilot/releasepilot-guard** to version **v0.3.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/releasepilot-guard) to find the latest changes.

## Action Summary

**ReleasePilot Guard** is a GitHub Action that automatically checks if an Expo pull request can be released through Expo Updates, requires new native binaries, depends on backend or runtime configuration changes, or still needs human review. It provides a clear and conservative approach to release impact analysis with evidence-based results, ensuring safe adoption of OTA updates in real repositories.

## What's Changed

## What’s changed

- Removed the product overview image from the README for a cleaner Marketplace presentation.
- Bumped the project version to 0.3.2.

## Validation

The release commit passed the ReleasePilot advisory check, automated review, and the full CI workflow: ESLint, all 21 tests, and a production build.

## Install or upgrade

Use the rolling major tag:

```yaml
uses: releasepilot/releasepilot-guard@v0
```

For immutable installations, pin `releasepilot/releasepilot-guard@v0.3.2` or commit `bf9b2f38252f2cb340e62d91ff82666c1a1db5e9`.

**Full changelog:** https://github.com/releasepilot/releasepilot-guard/compare/v0.3.1...v0.3.2
