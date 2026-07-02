---
title: Fallow - Codebase Intelligence
date: 2026-07-02 06:50:54 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-intelligence
version: v2.104.0
dependentsNumber: "235"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v2.104.0**.

- This action is used across all versions by **235** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-intelligence) to find the latest changes.

## What's Changed

## Highlights

This release is heavy on CSS intelligence. `fallow health --css` now understands CSS-in-JS (styled-components, emotion, linaria, vanilla-extract, StyleX, Panda) as first-class, ships a second styling-health quality axis, and adds a design-token blast-radius index. Plus a staged human review walkthrough, an opt-in unused-prop exemption, and a batch of framework false-positive fixes.

## CSS intelligence (CSS program, Phases 3-4)

- **CSS-in-JS is first-class in `fallow health --css`.** styled-components / emotion / linaria (tagged templates) and vanilla-extract / StyleX / Panda / emotion-object (object notation) previously produced `null` `css_analytics`. A lexical lifter now extracts the CSS body from both forms and feeds it through the same structural analytics and styling-health pipeline, so a CSS-in-JS app gets real duplicate-block, structural, and token-sprawl signals. Dep-gated on a declared CSS-in-JS library, so non-CSS-in-JS projects are byte-unchanged.
- **Styling-health: a second CSS-quality axis, confidence-aware.** `fallow health --css` reports a separate `styling_health` score (0-100) and A-F grade with a `Deductions:` breakdown across five capped penalty categories. It carries a `confidence` marker (`high` / `low`) so a thin authored-CSS surface (utility-first Tailwind app) renders dimmed with a caveat instead of an authoritative grade. Descriptive-only: no exit code, badge, or CI gating.
- **Formula v3 weights value drift over exact repetition.** Research is clear that exact CSS duplication is the least-harmful pattern while design-token inconsistency is the real maintenance harm, so the exact-block penalty is down-weighted to a soft hint and token-erosion gains a hardcoded-value-sprawl drift term (distinct un-tokenized `box-shadow` / `border-radius` / `line-height` values). `STYLING_HEALTH_FORMULA_VERSION` bumps to 3. If you diff `styling_health.score`/`grade` over time, re-baseline or gate on `formula_version`; the one-time step-change at this boundary is expected.
- **Design-token blast-radius (`token_consumers`) for Tailwind v4 AND CSS-in-JS tokens.** `fallow health --css --format json` now carries a reverse index of where each design token is consumed. Change `--color-brand` (Tailwind `@theme`) or a StyleX `defineVars` / vanilla-extract `createTheme` token and see a `consumer_count` plus located `consumers[]` before touching it. `consumer_count` is a static lower bound (descriptive context, not a deletion gate); the authoritative dead-token finding stays `unused_theme_tokens`.
- **New `get_token_blast_radius` MCP tool.** A focused, read-only tool that surfaces the token blast-radius directly without the agent needing to know the data hides inside `css_analytics`.
- **Fuzzy CSS clones via value canonicalization.** `fallow dupes` now canonicalizes CSS values on the stylesheet path (a zero-with-unit collapses to bare `0`, a hex color expands to its long lowercased form), so value-drifted clones (`0px` vs `0`, `#fff` vs `#ffffff`) hash equal and the same shadow / gradient / transition recipe re-implemented with drift finally matches. Scoped to CSS-family files and SFC/Astro `<style>` regions; JS/TS clone detection is unchanged.

## Review and configuration

- **`fallow review --walkthrough`: a staged terminal tour.** Renders the review walkthrough guide as an ordered, human-readable tour (Review Focus header, staged sections, per-file one-line facts and grounded badges, a collapsed "cleared" panel). `--format markdown` emits a paste-into-PR artifact; `--format json` is byte-identical to `--walkthrough-guide`. Per-file viewed state persists locally (`--mark-viewed`) and tolerates a moved tree. Always exits 0.
- **`unusedComponentProps.ignorePattern`: exempt intentionally-unused props.** Set `"unusedComponentProps": { "ignorePattern": "^_" }` to exempt props whose local destructure binding matches the regex (the leading-underscore convention that TS `noUnusedParameters` and ESLint `varsIgnorePattern` honor). Applies to Vue, Svelte, Astro, and React/Preact. Opt-in; default behavior is unchanged. Thanks [@hniedner](https://github.com/hniedner) for the request. (Closes [#1648](https://github.com/fallow-rs/fallow/issues/1648))

## CI, coverage, and architecture

- **The GitLab CI template can reuse a pre-installed fallow binary.** Set `FALLOW_SKIP_INSTALL: "true"` to skip `npm install -g fallow` and run a `fallow` already on `PATH` (for example a version pinned through a pnpm catalog), so CI runs the same binary as your local lint gate. The job fails fast when no `fallow` is found. Thanks [@Jerc92](https://github.com/Jerc92) for the patch in [#1662](https://github.com/fallow-rs/fallow/pull/1662).
- **Coverage upload enrichment.** `fallow coverage --with-callers` uploads importer edges, and the inventory upload now emits per-function complexity and per-file churn.
- **Typed architecture boundaries.** `fallow-engine`, `fallow-output`, and `fallow-api` now own the command-neutral analysis runners, output contracts, and programmatic Rust boundary; LSP, MCP, and NAPI callers consume typed results and serialize JSON only at protocol boundaries. The old `fallow-programmatic-cli` compatibility crate has been removed.

## Bug fixes

- **Iterating a typed class array no longer false-flags the class members as unused.** A cluster of `unused-class-member` false positives where the class is only used through an iteration loop variable is now fixed across array-method callbacks (`.map` / `.forEach` / `.filter` / ...), `for...of`, React/Preact JSX `.map`, Svelte `{#each}`, Vue `v-for` (including `props.<field>` sources), Angular `@for` / `*ngFor` inline templates, and Astro template `.map`. Over-credit only: a genuinely unused member still reports. Thanks [@Ericlm](https://github.com/Ericlm) for the report and minimal reproduction. (Closes [#1707](https://github.com/fallow-rs/fallow/issues/1707), [#1711](https://github.com/fallow-rs/fallow/issues/1711), [#1712](https://github.com/fallow-rs/fallow/issues/1712), [#1713](https://github.com/fallow-rs/fallow/issues/1713))
- **`unused-files` no longer false-flags a Next.js `page.mdx` when `next.config` wraps its config object.** `export default withMDX(nextConfig)` (the official `@next/mdx` idiom), `module.exports = createJestConfig(cfg)`, and nested/curried wrappers now resolve, which also fixes the same class for any wrapped Vite / Webpack / Jest config. Thanks [@AlonMiz](https://github.com/AlonMiz) for the report. (Closes [#1642](https://github.com/fallow-rs/fallow/issues/1642))
- **`unused-files` no longer false-flags a `commit-and-tag-version` updater script.** A new plugin (legacy enabler `standard-version`) credits each `bumpFiles[]` / `packageFiles[]` `updater` module and `filename` target, from both the package.json key and standalone `.versionrc` configs, gated on the file existing on disk. Thanks [@rbalet](https://github.com/rbalet) for the report. (Closes [#1640](https://github.com/fallow-rs/fallow/issues/1640))
- **`unused-class-members` no longer false-flags framework-dispatched OpenLayers methods or a coercion-only `toString`.** A `handleEvent` on an `ol/interaction/*` subclass and a `toString` used only through string coercion (template interpolation, `String(...)`, `+`) are now credited, with tight gating so genuinely-dead members still report. (Closes [#1638](https://github.com/fallow-rs/fallow/issues/1638))
- **Telemetry `findings_present` is recorded again for `fallow flags`, `fallow watch`, and the `security` `survivors` / `blind-spots` subcommands.** A debug-build invariant now fails fast if any finding-surfacing workflow records an event without noting its find-state, preventing the whole regression class. No change to the telemetry payload shape. (Closes [#1650](https://github.com/fallow-rs/fallow/issues/1650))

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v2.103.0...v2.104.0

