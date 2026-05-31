---
title: Fallow - Codebase Intelligence
date: 2026-05-31 06:33:27 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-intelligence
version: v2.85.0
dependentsNumber: "105"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v2.85.0**.

- This action is used across all versions by **105** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-intelligence) to find the latest changes.

## Action Summary

Fallow is a codebase intelligence engine designed for TypeScript and JavaScript projects, providing deterministic static analysis to assess code quality, risks, architecture, duplication, dependencies, and cleanup opportunities. It automates the generation of structured, actionable insights for maintainers, CI pipelines, and tools, enabling effective code reviews, refactoring, and safe removal of unused code without requiring configuration or reliance on AI. Its key capabilities include health scoring, identifying risk hotspots, and producing traceable findings in both human-readable and machine-readable formats.

## What's Changed

## v2.85.0: health as a CI gate, broader framework detection, and the new `fallow impact` report

A large release that lands the accumulated work since v2.84.0. The headline changes for everyday use: `fallow health` can now gate CI on a score, and framework/plugin detection got broader and more accurate. On top of that, a new local `fallow impact` report, opt-in telemetry, and a coverage-intelligence verdict for Fallow Runtime users.

### `fallow health` as a CI gate

`fallow health` can now act as a real CI gate (#790):

- `--min-score N` is now authoritative: the build fails when the health score drops below `N`, and complexity findings become informational rather than hard failures. (Previously `--min-score` did not take effect; if you were already passing it, it now does what it says.)
- `--report-only` runs the full health output and always exits 0, for teams that want the signal without gating yet.
- No gate flag behaves as before (any finding fails), so existing pipelines are unchanged unless you opt into the flags above.
- The churn-hotspot window now shows in the metrics line and the markdown vital-signs section (#799).

```bash
fallow health --min-score 80      # fail CI below 80
fallow health --report-only       # always exit 0, just report
```

### New and improved framework detection

The broadest free win this cycle is fewer false positives across more frameworks:

- New **Velite** plugin (#774).
- **rspress**: the `@theme` virtual module is credited (#787).
- **SvelteKit**: layout-reset route filenames (`+page@.svelte`, `+layout@named.svelte`) are recognized as entry points (#797).
- **Nuxt**: `@nuxt/content` `content.config.ts` is credited as a default-export entry (#801).
- **ESLint**: meta-preset plugins pulled in via `peerDependencies` (e.g. `@antfu/eslint-config`) are credited as used (#805).
- **oxlint**: CLI tooling packages such as `oxlint-tsgolint` are credited as used (#802).
- **React Compiler**: `babel-plugin-react-compiler` is credited via `reactCompilerPreset()` (#764).
- **Danger**: the Danger plugin activates from dangerfiles.

Plus correctness fixes that remove false "unused" reports:

- Class members used via typed destructure bindings are credited (#762).
- Workspace imports resolve when tsconfig `paths` point at an unbuilt `dist` (#763).
- A binary invoked as `bun --flag <bin>` in a package script is credited (#761).
- Workspace class members and SCSS include paths survive plugin-result merging (#783).

### `fallow impact` (new, free, local)

`fallow impact` is an opt-in, local report that shows whether your codebase is trending cleaner over time. It is off by default, writes a single gitignored file at `.fallow/impact.json`, and never affects exit codes.

```bash
fallow impact enable     # start recording (off by default)
fallow impact            # show the report
```

It surfaces three things:

- **Now**: how many findings the latest run reported (#788).
- **Trend**: the change in finding count versus the previous run (#788).
- **Resolved**: which findings you actually fixed between runs, distinguished from ones you suppressed or moved (#803).
- **Pre-commit saves**: how often a `fallow audit` pre-commit gate blocked a bad change until it was fixed (#788).
- **Whole-project track**: the report can be credited from full `fallow` runs, including duplication (#812).
- A read-only `impact` MCP tool lets agents query the report without enabling or disabling it (#804).

The store is gitignored on enable and unsupported formats are rejected up front (#795).

### Duplication

- **CRLF-invariant clone fingerprints** (#809): a clone's fingerprint is now stable across platforms regardless of line endings.
- **Forward-slash path normalization** in human output on Windows (#807).
- **Trace a clone family by fingerprint**: drill into a specific clone group via its fingerprint, with hardened deep-dive handles (#769).

### CLI and source evidence

- **`fallow upload-static-findings`** (#796): uploads findings for the source-evidence viewer.
- **Repo-relative source-map paths** (#810): each source map's repo-relative path is uploaded so monorepo source resolution works.

### Configuration

- **Multiple-config warning** (#780): `fallow` warns when more than one config file coexists in a single directory, so which config is active is never a surprise.
- **Configuration hint on empty `fallow flags` output** (#785): an empty flags result now points you at how to configure flag detection.

### Opt-in telemetry

Optional, coarse usage telemetry to help prioritize framework and feature work. It is **off by default**, never collects paths, names, source, or config, and has fleet-wide kill switches (#770):

```bash
fallow telemetry enable      # opt in
fallow telemetry inspect     # print the exact payload, send nothing
# DO_NOT_TRACK=1 or FALLOW_TELEMETRY_DISABLED=1 hard-disables it
```

### Coverage intelligence (Fallow Runtime)

For Fallow Runtime users with coverage data, `fallow health` gains a coverage-intelligence verdict that weighs static findings against runtime coverage evidence (#768). Requires Fallow Runtime and a coverage source.

### Supply-chain and self-hardening

Internal hardening of fallow's own build and analysis path. No action needed for users:

- Analysis only ever shells out to git, nothing else (#773).
- Guards against hidden-unicode and agent-file poisoning, with a CI gate on baseline drift (#779, #794).
- `--ignore-scripts` on dev-dependency and release-pipeline installs (#775, #782).
- A documented signing-key rotation and compromise-response runbook (#781).

### Thanks

Reporters who surfaced detection gaps fixed in this release:

- [@codingthat](https://github.com/codingthat) for SvelteKit layout-reset entry points (#791).
- [@Noktomezo](https://github.com/Noktomezo) for ESLint meta-preset plugins (#754) and `bun` script binaries (#755).
- [@kevinmichaelchen](https://github.com/kevinmichaelchen) for `oxlint-tsgolint` (#753).
- [@callstackincubator](https://github.com/callstackincubator) for rspress `@theme` (#756).
- [@asciimoo](https://github.com/asciimoo) for typed-destructure class members (#752).

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v2.84.0...v2.85.0

