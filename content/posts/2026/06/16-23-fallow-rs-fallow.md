---
title: Fallow - Codebase Intelligence
date: 2026-06-16 23:31:24 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-intelligence
version: v2.97.0
dependentsNumber: "188"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v2.97.0**.

- This action is used across all versions by **188** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-intelligence) to find the latest changes.

## What's Changed

v2.97.0 brings a CSS and Tailwind intelligence layer to `fallow health`, a wave of framework-specific dead-code and health checks across SvelteKit, Vue, Pinia, and Next.js, the Next.js React Server Components boundary suite, and a cross-repo view for Fallow Impact.

## CSS and Tailwind intelligence (`fallow health --css`)

Opt-in CSS analysis that treats your stylesheets as part of the graph:

- **Unused Tailwind v4 `@theme` design tokens.** A `@theme` token whose utility, `var()` reads, and `@apply` uses appear nowhere is a dead design token. Heavily gated to stay near-zero-false-positive: Tailwind v4 only, abstains on plugin projects, published-library stylesheets, and partial-scope runs.
- **Unused `@font-face` web fonts**, **`font-size` scales authored in mixed length units**, and **global CSS classes referenced by no in-project markup**, plus **likely CSS class-name typos** in markup.
- **Structural CSS analytics** (specificity, nesting depth, declaration counts) for a quick stylesheet health read.
- CSS Module class extraction now uses a real CSS parser instead of a regex pass.

These are reported as candidates with read-only verify commands, never gated findings.

## Framework health expansion

- **SvelteKit**: `load()` return-object keys that no consumer reads (the key still runs a server fetch / DB cost per request for data nothing renders).
- **Vue**: `defineProps` props used nowhere in their component, `defineEmits` events emitted nowhere, and unused Pinia store members across the graph.
- **Vue / Svelte**: components that are reachable but rendered nowhere, missing static asset references in templates, and `inject` / `getContext` calls with no matching provider.

## Next.js React Server Components

- `fallow security` flags a `"use client"` file that reaches server-only code.
- Server-only exports placed in a `"use client"` file, barrels that mix client and server-only modules, and `"use client"` / `"use server"` directives placed below an import (where the bundler silently ignores them).
- App Router route collisions and dynamic-segment name conflicts, plus unused Server Actions that no code calls.
- Route-internal unused exports in app-router files are now reported where other tooling suppresses them.

## Fallow Impact: cross-repo view

- `fallow impact --all` rolls up surfacing, trend, and containment across every tracked repo, with `--sort` and `--limit`. A matching read-only `impact_all` MCP tool exposes it to agents.
- Reclaim stale per-project stores with `FALLOW_IMPACT_STORE_MAX_AGE_DAYS`.

## Fixes

- `fallow dupes` now also excludes re-export barrels and top-level static `require()` binding blocks when `ignoreImports` is enabled; duplication gates may see another measured drop (opt out with `--no-ignore-imports`).
- GitHub Action and GitLab combined-mode runs no longer fail on hidden duplicate stats when filtered output has no actionable clone groups. Thanks @pavle99 for the report.
- Vue components rendered after a `<template #slot>` are no longer falsely reported as unused.
- `fallow coverage analyze --cloud` tolerates `null` caller-graph and complexity fields in the runtime-context response.
- VS Code: un-hiding findings reliably restores the squiggles, with broader hardening around LSP restarts, binary downloads, and the sidebar.
- Concurrent `fallow impact` recordings no longer lose data (advisory file lock).
- The analysis findings added this cycle now surface correctly in CI summaries, the VS Code sidebar, and editor severity.

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v2.96.0...v2.97.0

