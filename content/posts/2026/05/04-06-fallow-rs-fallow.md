---
title: Fallow - Codebase Intelligence
date: 2026-05-04 06:28:03 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-intelligence
version: v2.63.0
dependentsNumber: "37"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v2.63.0**.

- This action is used across all versions by **37** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-intelligence) to find the latest changes.

## Action Summary

This GitHub Action, **Fallow**, provides static and optional runtime analysis for TypeScript and JavaScript codebases. It helps developers identify and address unused code, duplication, complexity, circular dependencies, and architecture drift, streamlining code cleanup, improving maintainability, and reducing technical debt. With its zero-configuration setup and sub-second performance, Fallow builds a project-wide understanding of the codebase, making it ideal for optimizing development workflows and supporting AI-assisted coding practices.

## What's Changed

A monorepo-friendly release. Five contributor PRs from [@fmguerreiro](https://github.com/fmguerreiro) clear false positives across Turborepo CI workflows, ESLint flat-configs, Vitest manual mocks, and Next.js dynamic re-exports. The `health_score` formula is reworked to be scale-invariant so large monorepos no longer score in the B band by default. CSS `@import` now follows `package.json#exports` with the `style` condition (shadcn / Tailwind v4 plugins).

## Added

**Vitest `/__mocks__` virtual specifiers no longer flagged as unlisted dependencies** ([#265](https://github.com/fallow-rs/fallow/pull/265)) — `@aws-sdk/__mocks__`, `@sentry/__mocks__`, `@supabase/__mocks__`, etc. are Vitest manual-mock specifiers that don't exist on npm; they used to trigger an `unlisted-dependency` finding with an "install this package" auto-fix that pointed at a package that doesn't exist. The Vitest plugin now contributes a `/__mocks__` package-name suffix via the new `Plugin::virtual_package_suffixes()` trait method, and the suffix list merges across workspace plugin runs into the root `AggregatedPluginResult` so monorepos with Vitest only in a workspace's `package.json` (not the root) get the same suppression. Thanks [@fmguerreiro](https://github.com/fmguerreiro).

## Changed

**`health_score` is now scale-invariant** (Closes [#260](https://github.com/fallow-rs/fallow/issues/260)) — The penalty formula previously used absolute counts (`unused_dep_count`), unweighted averages (`avg_cyclomatic`), and order-statistics (`p90_cyclomatic`) that are mathematically incapable of firing at large-monorepo scale: a 50k-LOC monorepo with 200 unused devDependencies and 1500 functions over 60 LOC would score in the B band because the per-dimension caps were saturated and the averages were diluted by clean code in the long tail. The reworked formula switches to scale-invariant aggregators: `critical_complexity_pct` (functions over a hard CC threshold), `maintainability_low_pct` (files below the MI threshold), `unused_deps_per_k_files`, `circular_deps_per_k_files`, `functions_over_60_loc_per_k`, `coupling_high_pct`, and `hotspot_top_pct_count` (top-percentile hotspots normalized against `total_files`). Caps on `unused_deps` and `circular_deps` raised from 10 to 25. New `formula_version: 2` field on `HealthScore` lets consumers detect the formula change. Older snapshots that lack the scale-invariant fields fall back to the previous aggregators so cached / archived data still scores. Thanks [@OmerGronich](https://github.com/OmerGronich) for the detailed report including the per-dimension cap analysis.

## Fixed

**CSS `@import 'pkg/subpath.css'` resolves through `package.json#exports` with the `style` condition** (Closes [#261](https://github.com/fallow-rs/fallow/issues/261)) — Bare CSS imports whose target is exposed only through an `exports` map under the `"style"` condition (shadcn, daisyui, Tailwind v4 plugins) previously surfaced as `unresolved_imports` even though the file existed and bundlers resolved it correctly. The CSS / SCSS resolver now consults the package's `exports` map for the requested subpath before falling back to the `node_modules/<pkg>/<file>` direct path, picking up `{ "./tailwind.css": { "style": "./dist/tailwind.css" } }` shapes. Thanks [@VidhyaKumar](https://github.com/VidhyaKumar) for the report with a complete shadcn 4.6.0 reproduction.

**CI YAML scanner stops emitting `WARN invalid entry pattern` for shell and regex fragments** ([#262](https://github.com/fallow-rs/fallow/pull/262)) — GitHub Actions expressions (`${{ env.URL }}/api/health`), `jq -r '.[]'` array iterators, and Perl regex shards (`grep -oP '(?<=Module )\./[^ ]+'`) split on whitespace into tokens like `}}/api/health`, `'.[]'`, and `)\./[^` that reached `globset::GlobBuilder::new(...).build()` and produced 10+ noise warnings on a typical CI repo. A new `could_be_file_path` negative-only guard rejects tokens whose syntax precludes a Unix path (unbalanced `${{`/`}}`, backslashes, malformed `[...]`) before they reach globset compilation. Next.js dynamic-route segments (`app/[id]/page.tsx`, `pages/[...slug].ts`) remain valid. Thanks [@fmguerreiro](https://github.com/fmguerreiro).

**Next.js `dynamic(() => import('./X').then(m => m.X))` lazy-loaded re-exports no longer flagged as `duplicate-export`** ([#263](https://github.com/fallow-rs/fallow/pull/263)) — The Next.js code-splitting idiom where `Foo-lazy.tsx` exports `Foo = dynamic(() => import('./Foo').then(m => m.Foo), { ssr: false })` is semantically a re-export of `Foo`. `find_duplicate_exports` now extends `re_export_sources` with dynamic-import edges that act as re-exports, gated by a wrapper-must-export check that guards against false-negative suppression of legitimate duplicates. Thanks [@fmguerreiro](https://github.com/fmguerreiro).

**ESLint flat-config plugin imports trace through workspace-internal config packages** ([#266](https://github.com/fallow-rs/fallow/pull/266)) — Turborepo / Nx monorepos that centralize ESLint config in a workspace package were producing false `unused-devdep` flags for plugins the shared config imports transitively. The ESLint plugin now walks up `node_modules/` ancestors (bounded by `MAX_NODE_MODULES_WALK_DEPTH = 8`) so packages hoisted to the monorepo root are found from a workspace root, and resolves `@scope/pkg/subpath` imports via the package's `exports` map with `.js`/`.mjs`/`.cjs` extension fallback. ESLint also joins the `must_parse_workspace_config_when_root_active` allowlist so workspace `eslint.config.*` files still get parsed when root-level ESLint is active. Thanks [@fmguerreiro](https://github.com/fmguerreiro).

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v2.62.0...v2.63.0

