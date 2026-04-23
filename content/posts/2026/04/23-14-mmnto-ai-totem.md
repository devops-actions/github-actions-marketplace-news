---
title: Totem Shield
date: 2026-04-23 14:06:37 +00:00
tags:
  - mmnto-ai
  - GitHub Actions
draft: false
repo: https://github.com/mmnto-ai/totem
marketplace: https://github.com/marketplace/actions/totem-shield
version: mmnto/totem1.15.2
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/mmnto-ai/totem** to version **@mmnto/totem@1.15.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/totem-shield) to find the latest changes.

## Action Summary

Totem is a CLI tool designed to provide a persistent memory and enforcement layer for AI coding agents, addressing their tendency to forget context and repeat architectural mistakes. It automates the creation and enforcement of coding rules by converting plain-English lessons into deterministic linting rules, ensuring consistent adherence to best practices without relying on runtime LLMs. This helps maintain architectural integrity, reduces repetitive review cycles, and prevents recurring errors in AI-assisted development workflows.

## What's Changed

### Patch Changes

-   1c766c2: 1.15.2 ships the archive-in-place durability substrate from #1587 and the new `totem lesson archive` atomic command.

    ## Governance durability (closes #1587)

    -   `totem lesson compile --refresh-manifest` — new no-LLM primitive that recomputes `compile-manifest.json` output_hash from the current `compiled-rules.json` state. Closes the postmerge inline-archive gap where the no-op compile path only detected input-hash drift. Strict exclusivity with `--force`.
    -   `totem lesson compile --force` now preserves `status`, `archivedReason`, and `archivedAt` additively on rules whose `lessonHash` survives to the new output. Transient compile failures (network / rate-limit / manual reject / example-verification / cloud parse) leave the old rule intact instead of silently dropping it. Implemented via the new `preserveLifecycleFields` helper in core and `upsertRule` / `removeRuleByHash` helpers in the CLI compile loop (replace-by-hash on success; remove-on-skipped; unchanged on failed / noop). Dangling-archive guard preserved — rules whose source lesson was deleted are never resurrected.
    -   `totem lesson archive <hash> [--reason <string>]` — new atomic command mirroring `totem rule promote`. Flips the rule's `status` to `archived`, stamps `archivedAt` on first transition, preserves `archivedAt` on reruns, refreshes the manifest, and regenerates copilot + junie exports — all in one call. Matches prefix on `lessonHash`; duplicate-full-hash collisions surface as data-corruption errors distinct from prefix ambiguity.
    -   `/postmerge` skill doc rewritten to call `totem lesson archive` directly, retiring the hand-rolled `scripts/archive-bad-postmerge-*.cjs` pattern.

