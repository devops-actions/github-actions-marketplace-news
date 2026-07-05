---
title: Pi Review Agent
date: 2026-07-05 21:57:02 +00:00
tags:
  - sun-praise
  - GitHub Actions
draft: false
repo: https://github.com/sun-praise/pi-review-agent
marketplace: https://github.com/marketplace/actions/pi-review-agent
version: v1.3.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/sun-praise/pi-review-agent** to version **v1.3.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pi-review-agent) to find the latest changes.

## What's Changed

## What's Changed

### Fixed

- **Team mode now respects the `model` input** (#16). Previously the model was registered into the LiteLLM provider but never forwarded to `runReview`, so every persona and the coordinator fell back to the hardcoded default `deepseek-v4-flash` and failed for any non-default model such as `mimo-v2.5`.
- **Single mode `model` input** also fixed: it had the same omission and would fail for non-default models because the provider only registers the user-selected model.

## Verification

- Tested end-to-end in PR #18 with `team: quality:1,security:1,performance:1` and `model: mimo-v2.5`: all three personas plus the coordinator completed successfully and posted a review comment.

## New Contributors

None.

**Full Changelog**: https://github.com/sun-praise/pi-review-agent/compare/v1.3.0...v1.3.1

