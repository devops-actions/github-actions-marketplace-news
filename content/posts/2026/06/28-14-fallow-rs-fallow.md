---
title: Fallow - Codebase Intelligence
date: 2026-06-28 14:54:48 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-intelligence
version: v2.103.0
dependentsNumber: "222"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v2.103.0**.

- This action is used across all versions by **222** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-intelligence) to find the latest changes.

## What's Changed

## Runtime coverage trust-output

`coverage analyze --format json` now mirrors the cloud runtime trust-output contract on the local report, so an agent can reproduce a verdict instead of re-deriving it:

- **Actionability + provenance.** Each report carries `actionable`, `actionability_reason`, and `actionability_verdict` (a capture with no tracked functions is a first-class `insufficient_evidence` verdict, never silently read as cold), plus a `provenance` block (`data_source`, `freshness_days`, `untracked_ratio`, `unresolved_ratio`, `stale`, `stale_after_days`). The block is context only: it never gates a positive verdict or a confidence score.
- **Confidence discriminators.** Every finding now carries a `discriminators` block exposing the inputs behind its verdict: `tracking_state` (called / never_called / untracked), `invocation_ratio`, the `low_traffic_threshold` and `min_observation_volume` in effect, and `trace_count` with `meets_observation_volume`.
- **Source-map upload hint.** When `coverage analyze --cloud` cannot map runtime positions to source and built source maps exist on disk, fallow prints the exact `fallow coverage upload-source-maps --dir <dir>` command. Human output only; JSON consumers already get the structured `coverage_unresolved` warning.

All three additions are additive and backwards-compatible.

## Typed output contracts

The engine, output, API, and programmatic-CLI boundaries are now explicit: typed engine results feed the CLI, LSP, NAPI, MCP, and programmatic consumers through shared contracts instead of CLI rendering being the implicit API surface.

As part of this, `workspace_diagnostics` is now a typed `WorkspaceDiagnostic` array on `CheckOutput` and `DupesOutput` (and the combined + audit envelopes), matching `WorkspacesOutput`. `docs/output-schema.json` and the generated npm / VS Code `.d.ts` now describe it precisely instead of as an opaque value. Thanks @riker-wamf for flagging it (#1635).

## MCP

`get_blast_radius` and `get_importance` now state the augment-not-gate rule in their tool descriptions: both return review context (caller counts, risk bands, importance scores) that must not gate a `safe_to_delete` decision or a confidence score. Only the three-state runtime tracking signal can issue a deletion verdict.

## Changed

- **`fallow dupes` now ignores test and mock files by default.** Duplicate-code analysis skips `*.test.*`, `*.spec.*`, `__tests__`, and `__mocks__` paths out of the box, reducing first-run noise. Set `duplicates.ignoreDefaults: false` to restore the previous corpus.

## Bug fixes

- **`unused-component-props` no longer false-flags Svelte `bind:`/`style:`/`class:` directive shorthands or Vue value-less `v-bind` same-name shorthands.** A value-less directive (`bind:open`, `style:height`) or a Vue 3.4+ `:open` shorthand references the prop itself, and `<style> v-bind(accent)` references bind script/prop values into CSS. All three are now credited. Thanks @hniedner for the report (#1641).
- **`unused-store-members` no longer false-flags a Pinia store member reached through indirection,** including inline `useFooStore().member`, a store passed as a `ReturnType<typeof useFooStore>` param, and member usage in `.ts` files. Thanks @Jerc92 and @Ericlm for the reports (#1489, #1488).
- **`unused-class-members` no longer false-flags a member reached through a factory or composable return value,** including when the factory's return type is inferred rather than annotated. Thanks @Jerc92 (#1441).
- **`unused-component-props` no longer aborts on a spaced `</template >` closing tag,** which previously reported every prop and emit in that SFC as unused. Thanks @Jerc92 (#1439).
- **`ignorePatterns` now accepts a leading `./`.** Entries such as `./src/generated/**` match the same files as `src/generated/**` (also applies to `ignoreUnresolvedImports`).

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v2.102.0...v2.103.0

