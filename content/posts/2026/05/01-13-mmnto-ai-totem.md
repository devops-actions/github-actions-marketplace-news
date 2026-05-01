---
title: Totem Shield
date: 2026-05-01 13:53:15 +00:00
tags:
  - mmnto-ai
  - GitHub Actions
draft: false
repo: https://github.com/mmnto-ai/totem
marketplace: https://github.com/marketplace/actions/totem-shield
version: mmnto/totem1.23.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/mmnto-ai/totem** to version **@mmnto/totem@1.23.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/totem-shield) to find the latest changes.

## Action Summary

Totem is a CLI tool designed to provide a persistent memory and enforcement layer for AI coding agents, addressing their tendency to forget architectural context or reuse existing helpers. It automates the process of catching and preventing repetitive coding mistakes by converting plain-English lessons into deterministic, offline linting rules that block problematic changes before they are pushed. This ensures consistent code quality and reduces the friction of manual reviews, enabling AI agents to operate with improved architectural integrity.

## What's Changed

### Minor Changes

-   94ea4a8: **Pack v0.1 alpha pilot: `@totem/pack-rust-architecture` lift + ADR-091/097 substrate completion (#1773)**

    First non-trivial consumer of the ADR-097 § 10 Pack v0.1 substrate (#1768/#1769/#1770 in 1.22.0). Validates the substrate end-to-end by registering Rust as a language extension and dispatching ast-grep rules against `.rs` source.

    **`@totem/pack-rust-architecture@1.23.0`** — new package (`private: true`)

    -   8 baseline lessons sourced from `mmnto-ai/liquid-city#134` (slice-6 vehicle-agent + dispersion review cycle, lc-Claude attribution preserved)
    -   Synchronous CJS `register.cjs` wires Rust into both engine paths: `api.registerLanguage('.rs', 'rust', wasmLoader)` for the web-tree-sitter side and `napi.registerDynamicLanguage({ rust })` for the @ast-grep/napi side (v0.1 side-channel, see `@mmnto/totem#1774`)
    -   Bundled `tree-sitter-rust.wasm` (1.1 MB) sourced from `@vscode/tree-sitter-wasm@0.3.1` (MIT, Microsoft) via `prepare`-time copy
    -   `compiled-rules.json` ships one tracer-bullet seed rule (`lesson-8cefba95`, Bevy hot-path `Local<Vec<T>>` per-tick allocation) — full LLM-compile of the 8-lesson set deferred to a focused follow-up since γ (per-language `KIND_ALLOW_LIST`, #1655) is needed before LLM-compile of Rust patterns avoids TS-grammar hallucinations
    -   Runtime integration tests boot the pack via `loadInstalledPacks({ inMemoryPacks })` and verify the seed rule fires on `.rs` source through the full substrate path

    **`@mmnto/totem` — #1654 fix: thread target Lang through the compile-time pattern validator**

    Pre-#1654, `validateAstGrepPattern` always parsed under `Lang.Tsx` regardless of the rule's `fileGlobs`, and `inferBadExampleExts` (smoke gate) used a TS/JS-only regex that silently fell back to the default set for non-TS rules. A Rust pattern would either false-pass under TSX (the `ResMut<TacticalState>` exhibit) or false-fail with a TSX-parser error.

    -   `validateAstGrepPattern(pattern, fileGlobs?)` now resolves the target Lang via `resolveAstGrepLangs(fileGlobs)` and accepts the pattern when any one Lang accepts it. Falls back to `Lang.Tsx` when fileGlobs is empty or no glob carries a registered extension (preserves legacy unscoped-rule semantics).
    -   `inferBadExampleExts` extracts any trailing extension from `fileGlobs` (not just TS/JS); runtime's `extensionToLang` filters out unmapped extensions inside `matchAstGrepPattern` so unmapped extensions cleanly return zero matches without parsing under the wrong grammar.
    -   New `resolveAstGrepLangs` helper exported alongside `extensionToLang` from `ast-grep-query.ts`.
    -   6 new regression tests covering the LC false-positive exhibit and the TS-fallback preservation invariant.

    **Substrate-extension follow-up filed as #1774 (tier-2, investigation)**: lift the napi-side language registration into `PackRegistrationAPI.registerNapiLanguage` once N≥2 pack consumers exist. PR-B's side-channel pattern in `register.cjs` is the time-boxed precedent that gathers design data; the side-channel is documented as visible debt in the pack's README.

