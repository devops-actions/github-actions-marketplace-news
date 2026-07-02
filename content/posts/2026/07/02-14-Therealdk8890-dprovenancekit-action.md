---
title: DProvenanceKit regression gate
date: 2026-07-02 14:47:55 +00:00
tags:
  - Therealdk8890
  - GitHub Actions
draft: false
repo: https://github.com/Therealdk8890/dprovenancekit-action
marketplace: https://github.com/marketplace/actions/dprovenancekit-regression-gate
version: v1.1.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Therealdk8890/dprovenancekit-action** to version **v1.1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/dprovenancekit-regression-gate) to find the latest changes.

## What's Changed

Patch over v1.1.0: the golden-context / candidate-context inputs now resolve through the runs subcommand (available in every 0.3.x SDK) instead of requiring gate CLI flags newer than the PyPI release. Caught by this repo's smoke test before any user hit it. The v1 tag points here.
