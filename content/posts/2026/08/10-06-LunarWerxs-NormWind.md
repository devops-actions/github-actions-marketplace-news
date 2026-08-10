---
title: NormWind Tailwind Audit
date: 2026-08-10 06:08:53 +00:00
tags:
  - LunarWerxs
  - GitHub Actions
draft: false
repo: https://github.com/LunarWerxs/NormWind
marketplace: https://github.com/marketplace/actions/normwind-tailwind-audit
version: v3.8.0
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
actionSummary: |
  NormWind is a zero-config CLI and GitHub Action that helps normalize Tailwind utility classes by collapsing verbose combinations and non-canonical arbitrary values into their short, canonical forms. It audits and optionally fixes bloated class strings in your project without forcing any formatting or configuration changes. This tool is useful for teams aiming to maintain cleaner, more readable CSS outputs while leveraging the power of Tailwind's utility-first approach.
---


Version updated for **https://github.com/LunarWerxs/NormWind** to version **v3.8.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/normwind-tailwind-audit) to find the latest changes.

## Action Summary

NormWind is a zero-config CLI and GitHub Action that helps normalize Tailwind utility classes by collapsing verbose combinations and non-canonical arbitrary values into their short, canonical forms. It audits and optionally fixes bloated class strings in your project without forcing any formatting or configuration changes. This tool is useful for teams aiming to maintain cleaner, more readable CSS outputs while leveraging the power of Tailwind's utility-first approach.

## What's Changed

## NormWind v3.8.0

_2026-08-09 · merge-safety correctness fix, SARIF reporter, ignore files, broader scanning_

- **Merge-safety gate for shorthand merges (correctness fix)**: a merge such as `ml-2 mr-2` → `mx-2` is now applied only when Tailwind's own engine confirms the before and after class lists render identical CSS. Tailwind emits utilities in its own order, not authoring order, so a merge sharing a group with another utility at a different value (a pre-existing `mx-8` alongside `ml-2 mr-2`) could previously hand that other utility the win and silently change the rendered layout. `--fix`/`--fixall` now skip any merge that isn't provably safe instead of applying it blind; this closes a real path to a silent visual regression from `--fix`.
- **New flags**: `--reporter <text|json|sarif>` (`sarif` emits SARIF 2.1.0 for GitHub code scanning; `--json` remains an alias for `--reporter json`), `--ignore <glob>` (repeatable), `--allow-empty` (exit `0` instead of `2` when a pattern matches nothing), and `--` to end flag parsing so a target can start with a dash.
- **`.normwindignore`**: a project-local ignore file (one glob per line, `#` comments, a bare directory name means everything under it) is now read automatically from the scanned directory. It is deliberately not read in GitHub Action mode, since the file is checkout-controlled and a pull request could otherwise silence the audit on the very files it changed; `--ignore` flags are always honored in both modes.
- **Broader file matching**: `.svelte`, `.astro` (frontmatter skipped, markup scanned), and plain `.html`/`.htm` join the default scan alongside Vue/JS/TS. The generated-folder ignore list dropped project-specific paths and now covers `.next`, `.nuxt`, `.output`, `.svelte-kit`, `.turbo`, and `storybook-static` at any depth, plus root-only build folders such as `build`, `coverage`, `out`, and `vendor`.
- **Class-string builders are scanned**: `clsx`, `cx`, `cn`, `classnames`, `classNames`, `cva`, `tv`, `twMerge`, and `twJoin` calls, including strings nested in `cva`/`tv` variant objects, arrays, ternaries, and `cond && "..."`, with locally-aliased imports resolved.
- **`--fix` covers every markup format**: `.svelte`, `.astro`, and `.html`/`.htm` join `.vue` in the safe default fixer, not just `--fixall`.
- **Composite equivalences are now fixable**: `truncate`, `place-content-*`, `place-items-*`, and `place-self-*` findings are applied by `--fix`/`--fixall` instead of being audit-only, so a fix-then-audit CI loop can actually reach exit `0`.
- **Stricter exit codes**: a pattern matching no lintable files now exits `2` instead of `0` (`--allow-empty` restores the old behavior), and `--fix`/`--fixall`/`--dry-run` combined with a canonical-maintenance flag, or `--dry-run` without `--fix`/`--fixall`, now exits `2` instead of silently doing nothing.

**Full comparison:** [v3.7.0...v3.8.0](https://github.com/LunarWerxs/NormWind/compare/v3.7.0...v3.8.0)
