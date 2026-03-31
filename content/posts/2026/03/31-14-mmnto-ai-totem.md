---
title: Totem Shield
date: 2026-03-31 14:01:59 +00:00
tags:
  - mmnto-ai
  - GitHub Actions
draft: false
repo: https://github.com/mmnto-ai/totem
marketplace: https://github.com/marketplace/actions/totem-shield
version: mmnto/cli1.7.2
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/mmnto-ai/totem** to version **@mmnto/cli@1.7.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/totem-shield) to find the latest changes.

## Action Summary

Totem is a codebase governance tool designed to prevent recurring mistakes by converting institutional knowledge into enforceable rules. It automates the detection, documentation, and enforcement of coding standards, ensuring errors are identified, lessons are learned, and constraints are applied to make those mistakes impossible to repeat. Key capabilities include fast linting, rule generation, and integration into CI/CD workflows to streamline development and reduce review overhead.

## What's Changed

### Patch Changes

-   8fe2329: feat: rule garbage collection and compile progress indicator (#1040, #894)
    -   `totem doctor --pr` now archives stale compiled rules (zero triggers after configurable minAgeDays). Opt-in via `garbageCollection` config block. Security-category rules are exempt.
    -   `totem compile` now shows elapsed time and ETA with throughput-based estimation. Rate-limited LLM calls (429) are automatically retried with jittered exponential backoff.

-   Updated dependencies [8fe2329]
    -   @mmnto/totem@1.7.2

