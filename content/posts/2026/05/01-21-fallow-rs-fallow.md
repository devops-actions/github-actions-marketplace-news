---
title: Fallow - Codebase Intelligence
date: 2026-05-01 21:51:04 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-intelligence
version: v2.60.0
dependentsNumber: "32"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v2.60.0**.

- This action is used across all versions by **32** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-intelligence) to find the latest changes.

## Action Summary

Fallow is a static analysis tool for TypeScript and JavaScript codebases that identifies and helps eliminate unused code, duplication, complexity, and architectural issues, with optional runtime insights for production behavior. It automates the process of analyzing code health, enabling developers to clean up their codebases, enforce best practices, and review changes more efficiently. With its zero-configuration setup and sub-second performance, Fallow provides a comprehensive, project-wide view of code quality without requiring a Node.js runtime.

## What's Changed

## Highlights

- **`includeEntryExports` is now a config option, and `--include-entry-exports` is a global CLI flag.** Persistently opt in to entry-file export validation via `"includeEntryExports": true` in your fallow config, or pass the flag once on combined mode (`fallow --include-entry-exports`). Previously the bare combined invocation rejected the flag because it was only defined on the `dead-code` subcommand.
- **SCSS / Sass `@use 'X'` no longer resolves to a sibling `X.tsx`.** Stylesheet importers now reject standard-resolver hits on JS/TS-family extensions and route through SCSS-aware fallbacks instead, eliminating phantom circular dependencies in standard CSS-modules / Angular `styleUrls` patterns.

## Added

- **`includeEntryExports` config option.** Set `"includeEntryExports": true` (JSON / JSONC) or `includeEntryExports = true` (TOML) in your fallow config. The CLI flag ORs with the config value when set.
- **`--include-entry-exports` is now a global flag.** Accepted on combined mode (`fallow --include-entry-exports`), `fallow dead-code`, `fallow audit`, and `fallow watch` (with the override applied at every config reload).
- **`include_entry_exports` MCP param on the `audit` tool.** Sibling-tool parity with `analyze` and `check_changed`. Forwards `--include-entry-exports` to the dead-code sub-pass.
- **Stable-API listings updated.** `--include-entry-exports` and `includeEntryExports` are now part of `docs/backwards-compatibility.md` and follow the project's semver guarantees.

Thanks [@filipw01](https://github.com/filipw01) for the report. (Closes [#249](https://github.com/fallow-rs/fallow/issues/249))

## Fixed

- **SCSS / Sass `@use 'X'` no longer resolves to a sibling `X.tsx`.** When both `Widget.scss` and `Widget.tsx` exist next to each other and a `.scss` importer does `@use 'Widget'`, fallow now resolves the import to `Widget.scss` per Sass's actual resolution algorithm. Stylesheet importers now reject any standard-resolver hit whose extension is a JS/TS-family extension (`.tsx`, `.ts`, `.mts`, `.cts`, `.js`, `.jsx`, `.mjs`, `.cjs`) and re-route through the SCSS-aware fallback chain (CSS-extension probe, `_filename` partial convention, framework include paths, `node_modules` walk-up). When those also fail, the import is reported as unresolved instead of falling through to JS/TS extensions. This eliminates phantom 3-file circular dependencies in standard CSS-modules / Angular `styleUrls` patterns where the `.tsx` component imports its own `.scss` and a sibling `.scss` shares variables/mixins via `@use`. Thanks [@OmerGronich](https://github.com/OmerGronich) for the precise reproduction and the suggested fix. (Closes [#245](https://github.com/fallow-rs/fallow/issues/245))

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v2.59.0...v2.60.0

