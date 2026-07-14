---
title: cowork-harness
date: 2026-07-14 22:27:01 +00:00
tags:
  - yaniv-golan
  - GitHub Actions
draft: false
repo: https://github.com/yaniv-golan/cowork-harness
marketplace: https://github.com/marketplace/actions/cowork-harness
version: v1.0.3
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This GitHub Action creates a headless test harness for Claude Cowork skills. It allows developers to reproduce the observable runtime contract of the platform closely enough for automated testing across various scenarios and CI jobs without needing a locked Desktop app. The action supports different fidelity tiers, including a free demo (`replay`), linting with `python3`, live tiers requiring Claude Desktop, token, Docker, or Lima, and provides debugging tools to understand session outputs.
---


Version updated for **https://github.com/yaniv-golan/cowork-harness** to version **v1.0.3**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cowork-harness) to find the latest changes.

## Action Summary

This GitHub Action creates a headless test harness for Claude Cowork skills. It allows developers to reproduce the observable runtime contract of the platform closely enough for automated testing across various scenarios and CI jobs without needing a locked Desktop app. The action supports different fidelity tiers, including a free demo (`replay`), linting with `python3`, live tiers requiring Claude Desktop, token, Docker, or Lima, and provides debugging tools to understand session outputs.

## What's Changed


Patch: parity sync to Claude Desktop `1.20186.9`. No runtime/API change.

### Changed

- Synced the platform baseline to Claude Desktop `1.20186.9`
  (`baselines/desktop-1.20186.9.json`, now what `baseline: latest` resolves to). A routine
  per-release parity refresh: the app version, the native agent staging path, and the asar
  fingerprint moved; the Cowork system prompt, egress allowlist, gate states, and agent (VM)
  version are unchanged from `1.20186.1`. README and the companion skill's baseline pointer were
  updated to match.



## What's Changed
* release: 1.0.3 by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/45


**Full Changelog**: https://github.com/yaniv-golan/cowork-harness/compare/v1...v1.0.3
