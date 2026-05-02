---
title: Fallow - Codebase Intelligence
date: 2026-05-02 21:32:31 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-intelligence
version: v2.62.0
dependentsNumber: "32"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v2.62.0**.

- This action is used across all versions by **32** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-intelligence) to find the latest changes.

## Action Summary

This GitHub Action, "Fallow," performs static analysis on TypeScript and JavaScript codebases to identify unused code, duplication, complexity issues, and architectural inconsistencies. It automates codebase cleanup, complexity reduction, and risk identification, enabling developers to maintain cleaner, more efficient, and maintainable code. Key features include project-wide analysis without requiring configuration, optional runtime insights for production usage, and compatibility with various frameworks, making it a comprehensive tool for improving code health and supporting AI-driven development workflows.

## What's Changed

fallow 2.62.0 ships a parallel `analyze` stage, an incremental git churn cache, the missing duplication row in the `--performance` table, and four bug fixes around dynamic imports, class-member globs, and `circular-dependency` suppression.

## Highlights

### `analyze` runs in parallel

The pipeline's analyze stage now schedules its ten independent detectors across rayon worker threads. On a synthetic 24,320-file monorepo the stage drops from ~6.75s to under half a second on a 14-core machine. Real-world fixtures (`next.js`, `preact`) show a ~2x speedup with byte-identical output.

### Incremental git churn cache

`.fallow/churn.bin` now records per-commit events keyed by `last_indexed_sha`. When `HEAD` advances from the cached SHA, fallow runs `git log <cached>..HEAD --numstat` and merges the delta instead of re-shelling out for the entire churn window. CI runs that fallow on every push and pre-commit hooks now hit the cache for the bulk of the work, paying only the marginal-commit cost.

### `usedClassMembers` accepts globs

Member strings containing `*` or `?` now compile as glob matchers, so a single rule can cover the entire family of methods a framework dispatches reflectively. `"*"` matches every member on a heritage-matching class, `"enter*"` / `"*Handler"` cover prefix or suffix patterns, and `"on*Event"` combines both. Designed for parser-generator listeners (ANTLR), code-generated bridges (`protoc-ts`, `openapi-typescript`, `graphql-codegen`), and abstract framework bases. Glob patterns matching zero members emit a `WARN` so dead allowlist entries surface.

```jsonc
{
  "usedClassMembers": [
    { "extends": "GrammarBaseListener", "members": ["enter*", "exit*"] }
  ]
}
```

## Added

- **`usedClassMembers` glob patterns**, see Highlights above. Thanks @OmerGronich for the report. (Closes #254)
- **`overrides[].rules.circular-dependency: "off"` suppresses cycles whose files all match the override glob.** A cycle is suppressed when **every** file in the cycle resolves to `Severity::Off` for `circular-dependency` via `overrides[]`. Cycles touching even one non-overridden file remain reported. Thanks @OmerGronich for the report. (Closes #255)
- **First-class blast-radius and importance sections on `fallow coverage analyze`.** New `--blast-radius` and `--importance` flags surface runtime-weighted blast-radius and importance findings in the human output.
- **Runtime coverage `--top` flag.** Limits the runtime findings + hot-path display to the top N entries.

## Changed

- **`analyze` stage runs detectors in parallel**, see Highlights above. Thanks @OmerGronich for the report. (Closes #259)
- **Git churn cache is incremental**, see Highlights above. Thanks @OmerGronich for the report. (Closes #258)
- **`--performance` table includes the duplication stage.** The combined-mode `Pipeline Performance` table now prints a `duplication: <ms>` row alongside the other stages instead of leaving the cost as an easy-to-miss parenthetical. Thanks @OmerGronich for the report. (Closes #257)

## Fixed

- **`circular-dependency` line-level inline directives now actually suppress.** `// fallow-ignore-next-line circular-dependency` on the offending import line previously landed in `stale_suppressions` and the cycle still appeared in the output, even though `fallow dead-code --format json` recommended exactly that comment. Singular and plural slug aliases (`circular-dependency` vs `circular-dependencies`) are now interchangeable across inline directives, `rules`, and `overrides[].rules`. Thanks @pippenz for the report. (Closes #256)
- **Bare `() => import('./X')` route callbacks credit the default export.** Object-literal properties named `component`, `loadChildren`, or `loadComponent` whose value is `() => import('./X')` (or a function-expression equivalent) now credit the target module's default export as used, even when no `.then(m => m.default)` is spelled. Fixes the `unused-export` false positive on the standard Angular Router and Vue Router lazy-loading shapes. Thanks @OmerGronich for the report. (Closes #253)
- **CSS `@import 'pkg/subpath.css'` resolves through `node_modules`.** Tailwind v4 `@import 'tailwindcss/theme.css'` and `@import 'tailwindcss/utilities.css'` patterns no longer surface as unresolved imports or as unused-dependency on `tailwindcss`.

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v2.61.0...v2.62.0

