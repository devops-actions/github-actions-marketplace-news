---
title: cowork-harness
date: 2026-07-14 07:54:07 +00:00
tags:
  - yaniv-golan
  - GitHub Actions
draft: false
repo: https://github.com/yaniv-golan/cowork-harness
marketplace: https://github.com/marketplace/actions/cowork-harness
version: v1.0.2
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The cowork-harness action is a test harness designed to reproduce Claude Cowork's observable runtime contract across various scenarios and CI environments. It automates the testing of skills by simulating the behavior and limitations of the Desktop app without using it directly, allowing for accurate testing in headless environments. The action supports different fidelity tiers that vary in their level of resources required for execution, from a free demo to live tiers that require additional software such as Claude Desktop and a token for real model interactions.
---


Version updated for **https://github.com/yaniv-golan/cowork-harness** to version **v1.0.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cowork-harness) to find the latest changes.

## Action Summary

The cowork-harness action is a test harness designed to reproduce Claude Cowork's observable runtime contract across various scenarios and CI environments. It automates the testing of skills by simulating the behavior and limitations of the Desktop app without using it directly, allowing for accurate testing in headless environments. The action supports different fidelity tiers that vary in their level of resources required for execution, from a free demo to live tiers that require additional software such as Claude Desktop and a token for real model interactions.

## What's Changed

Patch: shorten the Action's Marketplace tagline. No runtime/API change.

### Fixed

- `action.yml`'s `description` is now under GitHub Marketplace's 125-character limit (the full
  token-free-vs-live-lane detail is retained as comments above it), so the packaged Action can be
  published to the Marketplace. `1.0.1`'s description was too long and blocked the listing.



## What's Changed
* release: 1.0.2 by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/42


**Full Changelog**: https://github.com/yaniv-golan/cowork-harness/compare/v1...v1.0.2
