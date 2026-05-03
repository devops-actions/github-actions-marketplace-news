---
title: Totem Shield
date: 2026-05-03 13:54:00 +00:00
tags:
  - mmnto-ai
  - GitHub Actions
draft: false
repo: https://github.com/mmnto-ai/totem
marketplace: https://github.com/marketplace/actions/totem-shield
version: mmnto/cli1.26.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/mmnto-ai/totem** to version **@mmnto/cli@1.26.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/totem-shield) to find the latest changes.

## Action Summary

Totem is a CLI tool designed to provide a persistent memory and enforcement layer for AI coding agents, addressing their lack of architectural context and tendency to repeat mistakes. It automates the process of converting plain-English lessons about coding errors into enforceable rules, ensuring consistent adherence to best practices during development. By running offline and without relying on large language models (LLMs), Totem enhances AI-driven workflows with deterministic, sub-second linting to prevent recurring errors and maintain code integrity.

## What's Changed

### Minor Changes

-   c00dc7b: **ADR-097 § Q6 amended — engine-version constraint moves from `peerDependencies` to `engines` (closes #1803).**

    Pack manifest resolver (`pack-manifest-writer.ts:readEngineRange`, formerly `readPeerEngineRange`) now reads `engines['@mmnto/totem']` from the resolved pack's `package.json` instead of `peerDependencies['@mmnto/totem']`. The boot-time engine-version cross-check (`pack-discovery.ts:assertEngineRangeSatisfied`) reads the same value via `installed-packs.json#packs[].declaredEngineRange` and continues to fail loud on semver mismatch.

    **Why the move:**

    -   `engines` is npm-canonical for engine-version constraints. `peerDependencies` is for actual peer packages the consumer must install (e.g., `@ast-grep/napi`). Mechanism mapping is now correct.
    -   Symmetry across the cohort. Internal and future external packs declare `engines.@mmnto/totem` consistently; `peerDependencies` is uniformly for actual peer packages only.
    -   Closes the structural collision with `mmnto-ai/totem#1777` (the `1.22.0 → 2.0.0` wiggle root cause): a fixed-group sibling pack cannot peer-dep `@mmnto/totem` without triggering a changesets MAJOR cascade. The `engines` field is not touched by changesets fixed-group auto-bump, so the wiggle stays prevented even with a declared engine constraint.

    **Migration shape:**

    -   `@mmnto/pack-rust-architecture` and `@mmnto/pack-agent-security` now declare `"engines": { "@mmnto/totem": "^1.25.0" }`. Neither declares `@mmnto/totem` in `peerDependencies` (locked by `structure.test.ts` invariants in both packs).
    -   The `not-a-pack` warning in `totem sync` was reworded to point at the actual gap: `"missing engines['@mmnto/totem'] declaration — pack cannot satisfy the engine-version cross-check (ADR-097 § 5 Q6). Add '"engines": { "@mmnto/totem": "^<version>" }' to the pack's package.json and republish."` Pre-#1803 text was misleading per `mmnto-ai/totem#1803`'s reproducer (it claimed the registration callback was missing when the callback was correctly exported).
    -   No fallback to the legacy `peerDependencies['@mmnto/totem']` slot. Pre-1.26.0 packs that declared the engine constraint via peerDeps (none known to exist outside the `@mmnto/*` cohort, all of which are migrated in this cohort) must republish with `engines` declared.

    Closes #1803.

### Patch Changes

-   Updated dependencies [c00dc7b]
    -   @mmnto/totem@1.26.0

