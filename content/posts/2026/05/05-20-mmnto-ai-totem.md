---
title: Totem Shield
date: 2026-05-05 20:53:53 +00:00
tags:
  - mmnto-ai
  - GitHub Actions
draft: false
repo: https://github.com/mmnto-ai/totem
marketplace: https://github.com/marketplace/actions/totem-shield
version: mmnto/pack-rust-architecture1.28.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/mmnto-ai/totem** to version **@mmnto/pack-rust-architecture@1.28.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/totem-shield) to find the latest changes.

## Action Summary

Totem is a CLI tool that provides a persistent memory and enforcement layer for AI coding agents to address their tendency to forget project-specific context, repeat architectural mistakes, and reinvent existing solutions. It automates the process of converting plain-English lessons from past mistakes into enforceable linting rules, which are applied deterministically and offline to catch violations before code is pushed. By serving as a "tripwire" system, Totem maintains architectural integrity and reduces repetitive review cycles without disrupting the coding workflow.

## What's Changed

### Minor Changes

-   bd3fd71: `totem sync` Phase A / Phase B architectural separation (mmnto-ai/totem#1811, ADR-101).

    `totem sync` decomposes into two independently-runnable phases:

    -   **Phase A** — deterministic pack-resolution + `installed-packs.json` write (no API key required, runs in CI).
    -   **Phase B** — vector-store embedding sync (still requires the embedding key; unchanged).

    New mutually-exclusive flags on `totem sync`:

    -   `--packs-only` (Lite tier): write the pack manifest only; skip embedding sync, prune, the global registry update, and the `review-extensions.txt` write. Designed for CI environments without API keys after a `@mmnto/totem` cohort bump where pack-resolution alone needs to run before `totem lint` recognizes newly registered Tree-sitter languages.
    -   `--index-only` (Standard tier): run only the embedding sync; skip pack-resolution. Use when `installed-packs.json` is already current and only the vector store needs to re-embed.

    `--packs-only` hard-errors when combined with `--index-only`, `--full`, or `--prune` — Phase B is skipped under `--packs-only`, so those flags would silently no-op. `--index-only` composes with `--full` and `--prune` since all three modify Phase B.

    The CLI orchestrator now writes `installed-packs.json` BEFORE invoking `runSync` so `--packs-only` can short-circuit cleanly. The default flag-less behavior is observably equivalent to prior releases.

    UX nudge for stale manifests: when a rule expects a Tree-sitter language that isn't registered, the rule-engine now consults `installed-packs.json`'s cohort field and surfaces a structured `STALE_MANIFEST` `TotemError` pointing at `totem sync --packs-only` whenever the manifest is missing, pre-1.27.0, or written by an engine whose `major.minor` differs from the running version. Patch-level cohort drift passes (caret-range pack semver tolerance). Cohort-match falls through to the original "install the pack" `TotemParseError`.

    Schema: `InstalledPacksManifestSchema` gains an optional `cohort: string` field (semver). Pre-1.27.0 manifests without the field continue to parse cleanly. Stamped at write time by `writeInstalledPacksManifest()` from `resolveEngineVersion()`; tests can pre-populate the field to override the stamp.

    New public surfaces (additive):

    -   `resolveEngineVersion(): string`
    -   `detectStaleManifest(opts): StaleManifestDetection | null`
    -   `staleManifestError(detection, context): TotemError`
    -   `TotemErrorCode` adds `'STALE_MANIFEST'` and `'FLAG_CONFLICT'`.

