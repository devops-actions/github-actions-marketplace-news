---
title: Totem Shield
date: 2026-04-11 13:39:51 +00:00
tags:
  - mmnto-ai
  - GitHub Actions
draft: false
repo: https://github.com/mmnto-ai/totem
marketplace: https://github.com/marketplace/actions/totem-shield
version: mmnto/cli1.14.2
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/mmnto-ai/totem** to version **@mmnto/cli@1.14.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/totem-shield) to find the latest changes.

## Action Summary

Totem is a CLI tool that acts as a persistent memory and enforcement layer for AI coding agents, addressing their tendency to forget architectural context and repeat mistakes. It automates the process of turning plain-English lessons about coding errors into enforceable rules, ensuring consistent adherence to best practices without requiring live LLMs. By providing deterministic, offline linting, Totem enhances code quality and reduces friction in AI-assisted workflows.

## What's Changed

### Patch Changes

-   e022109: Use `[Review]` as the log prefix for `totem review` output (#1335)

    The `totem review` command was still printing `[Shield]` as the log prefix on every status line — a holdover from before the `shield` → `review` rename. Added a new `DISPLAY_TAG = 'Review'` constant in `shield-templates.ts` and routed every `log.info` / `log.dim` / `log.warn` / `log.success` call through it. The existing `TAG = 'Shield'` constant is kept verbatim because it's still used as the lookup key for `orchestrator.overrides.shield` and `orchestrator.cacheTtls.shield` in user configs — a coordinated rename of the routing key is tracked in #1335.

    User-visible effect: `totem review` output now prints `[Review]` instead of `[Shield]`. No config migration required.

    -   @mmnto/totem@1.14.2

