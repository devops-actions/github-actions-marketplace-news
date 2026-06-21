---
title: Fallow - Codebase Intelligence
date: 2026-06-21 06:56:20 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-intelligence
version: v2.101.0
dependentsNumber: "200"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v2.101.0**.

- This action is used across all versions by **200** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-intelligence) to find the latest changes.

## What's Changed

A performance and bug-fix release: faster duplicate detection, stylesheet resolution, and plugin detection on large repositories, plus false-positive fixes for Vue namespace components, Varlock, and the GitLab CI template.

## Performance

- **Faster duplicate detection on large repositories.** Clone detection now builds its suffix array with a linear-time SA-IS construction instead of the previous prefix-doubling approach, cutting the duplication stage of `fallow dupes` (and of bare `fallow` and `fallow audit`) on large codebases. Reported clones are unchanged.
- **Faster repeated stylesheet resolution.** Resolving external (`node_modules`) stylesheet `@import` / `@use` chains now reuses a single resolver session across lookups instead of rebuilding the resolver and re-reading every workspace `package.json` per stylesheet. On a 41-workspace monorepo this removes roughly 80 manifest reads and 80 path-canonicalization calls per external stylesheet.
- **Faster plugin and config detection on large repositories.** Plugin config files are collected during the existing project file scan instead of a second filesystem walk, and workspace file bucketing runs in parallel. On a 21k-file, 41-workspace project this roughly halves the plugin detection stage. Analysis output is byte-identical across the benchmark suite.

## Bug fixes

- **Vue components exposed as namespaces are no longer falsely reported as unused.** A design system that re-exports compound components through namespace barrels (`export * as List from "./components/List"`) and renders their members via dotted tags had every such member reported by `unrendered-component` as "reachable but rendered nowhere". The render-usage walk now follows namespace re-export edges back to the underlying `.vue` files, for both the named-import form (`import { List }`; `<List.Root>`) and the whole-namespace-import form (`import * as DS`; `<DS.List.Root>`), including barrels nested through further `export *` / `export * as` re-exports. A component re-exported through a namespace that nothing renders is still reported. Thanks @Smrtnyk for the report (#1351).
- **Varlock now activates from a nested `.env.schema`, not just a root-level one.** A project with a `.env.schema` in a subdirectory and no `varlock` dependency previously left the plugin inactive, so packages declared via `@plugin(...)` in that schema were reported as unused. They are now credited.
- **`fallow ci-template gitlab` now bundles the shared `gitlab_common.sh` helper.** The vendored GitLab CI template sources `gitlab_common.sh` from its comment and review steps, but the file was missing from the vendored output, so a generated pipeline failed at runtime. The template now includes it.

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v2.100.0...v2.101.0

