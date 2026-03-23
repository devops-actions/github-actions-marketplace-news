---
title: Fallow - Dead Code Analysis
date: 2026-03-23 05:54:35 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-dead-code-analysis
version: v1.3.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v1.3.1**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-dead-code-analysis) to find the latest changes.

## Action Summary

This GitHub Action, **fallow**, is a high-performance codebase analyzer for JavaScript and TypeScript projects, built using Rust. It automates the detection of unused code, circular dependencies, and duplicate code blocks, offering insights into unused files, exports, dependencies, and other inefficiencies. With significantly faster analysis compared to similar tools and no dependency on Node.js, it streamlines code cleanup and optimization for developers.

## Release notes

## Monorepo false positive fixes

This release dramatically reduces false positives in Angular/Nx monorepos and large Lerna/pnpm workspaces. Tested against real-world projects: **bazam.app** went from 278 → 270 issues (0 unused files), **vrs-portals** went from 586 → 453 issues (133 fewer false positives).

### Features

- **Angular plugin config parsing** — `angular.json` is now parsed to extract `styles`, `scripts`, `main`, `browser`, and `polyfills` from build targets as entry points. Angular peer dependencies (`rxjs`, `@angular/common`, `@angular/platform-browser`, `@angular/build`) are added to tooling deps so they're not flagged as unused.

- **Nx plugin config parsing** — `project.json` files are parsed to extract executor references (e.g., `@angular/build:application` → `@angular/build` as a referenced dependency) and `options.main` as entry points.

- **File-based plugin activation** — ESLint and Vitest plugins now activate when their config files exist in a workspace, not just when the package is in `dependencies`. This fixes false positives in monorepos where `eslint`/`vitest` are only in the root `package.json` but workspace packages have their own config files.

- **Infrastructure entry points** — Dockerfiles, Procfiles, and `fly.toml` are scanned for source file references (`RUN node`, `CMD`, `ENTRYPOINT`, esbuild invocations, `release_command`).

- **`dupes --changed-since`** — Duplication detection now supports `--changed-since` to only report clone groups involving changed files.

- **Vitest setup file detection** — `setupTests.{ts,tsx,js,jsx}` and `test-setup.{ts,tsx,js,jsx}` are marked as always-used when the Vitest plugin is active, fixing false positives for test setup files referenced via imported/spread base configs.

- **Wider nested package discovery** — `services/`, `tools/`, and `utils/` directories are now searched for nested `package.json` files alongside `packages/`, `apps/`, `libs/`.

### Bug fixes

- **Bare specifier cache poisoning** — The resolver cache for bare specifiers (e.g., `@bazam/shared-types`) now only caches results from successful `oxc_resolver` resolution. Previously, when resolution failed for a tsconfig path alias that looked like an npm package, the `NpmPackage` fallback was cached and prevented correct resolution for all subsequent files. This was the root cause of most false positives in Nx/Angular monorepos using tsconfig path aliases.

- **Production dependency false positives** — `plugin_tooling` dependencies (e.g., `zone.js`, `@angular/compiler`) are now excluded from unused production dependency detection, matching the existing dev dependency behavior.

- **Workspace entry pattern double-prefixing** — Entry patterns from `resolve_config()` that are already project-root-relative (e.g., `apps/client/src/styles.css` from `angular.json`) are no longer double-prefixed with the workspace path.

- **`check --changed-since` filtering** — Now correctly filters all issue types including unlisted dependencies, duplicate exports, and circular dependencies.

- **Duplication stats recomputation** — `recompute_stats` now deduplicates overlapping line ranges per file, fixing inflated `duplicated_lines` counts after baseline or `--changed-since` filtering.

- **Plugin entry point attribution** — Entry points discovered by plugins now show the correct plugin name instead of the generic `"plugin"`.

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v1.3.0...v1.3.1
