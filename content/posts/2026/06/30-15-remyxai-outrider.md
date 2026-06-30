---
title: Remyx Outrider
date: 2026-06-30 15:06:44 +00:00
tags:
  - remyxai
  - GitHub Actions
draft: false
repo: https://github.com/remyxai/outrider
marketplace: https://github.com/marketplace/actions/remyx-outrider
version: v1.6.28
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/remyxai/outrider** to version **v1.6.28**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/remyx-outrider) to find the latest changes.

## What's Changed

## Changes since v1.6.27

### \`claude-timeout\` now governs the preflight call too

Previously the preflight routing call had a hardcoded 180s wall-clock ceiling — too tight on very large monorepos and slower non-default backends, where preflight would time out and the run would fall through to implementation without getting the cheap routing decision. Operators bumping \`claude-timeout\` for implementation were surprised to find preflight still capping at 180.

A single \`claude-timeout\` input now covers both stages. Bump it for very large codebases or slower backends; lower it to cap cost; either way, one knob.

### Compatibility

Backwards-compatible. Direct callers of \`preflight_routing\` (tests, ad-hoc invocations) that don't pass an explicit \`timeout_s\` keep the 180s default. Production runs route through \`process_target\` which now passes \`target.claude_timeout_s\`.
