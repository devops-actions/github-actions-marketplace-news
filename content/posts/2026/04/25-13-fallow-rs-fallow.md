---
title: Fallow - Codebase Intelligence
date: 2026-04-25 13:23:48 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-intelligence
version: v2.48.5
dependentsNumber: "12"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v2.48.5**.

- This action is used across all versions by **12** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-intelligence) to find the latest changes.

## Action Summary

Fallow is a static analysis tool for TypeScript and JavaScript codebases, designed to identify unused code, code duplication, complexity issues, and architectural inconsistencies. It automates the process of improving code health by providing actionable insights and cleanup recommendations, enabling developers to streamline their projects and maintain high-quality code. With its zero-configuration setup, fast performance, and optional runtime analysis for production insights, Fallow simplifies codebase management and supports AI-assisted development workflows.

## What's Changed

## What's new

### Added

- **MCP trace tools for chasing why a finding exists.** Four new tools in the MCP server: `trace_export` (why is this export reachable, or why isn't it), `trace_file` (which entry points pull this file in), `trace_dependency` (which scripts and config files keep this package alive), and `trace_clone` (where else does this clone group appear). Each returns the full propagation chain, not just the verdict, so an agent can walk from "fallow says X" back to the entry point or script that justifies it without re-running analysis. `trace_dependency` correctly credits packages referenced only from `package.json` `scripts` blocks (e.g., husky, lint-staged), `trace_clone` strips absolute paths from instance locations so output stays portable across machines, and validation errors share the same envelope as the rest of the MCP surface. Closes [#176](https://github.com/fallow-rs/fallow/pull/176). Thanks [@M-Hassan-Raza](https://github.com/M-Hassan-Raza).

### Fixed

- **VS Code status bar tooltip now renders codicons instead of literal `$(error)` / `$(warning)` / `$(check)` text.** The popup markdown is built as a `vscode.MarkdownString` and the missing `supportThemeIcons = true` flag meant every codicon shorthand fell through as raw text. Independently, the status bar text and tooltip could disagree (e.g., `0.8% duplication` in the bar, `0.6% duplication` in the popup) because two code paths drove the surface: the LSP `analysisComplete` notification updated both, while CLI completion only updated the text. Both paths now feed through one `buildParamsFromCli` + `applyTooltipAndSeverity` pipeline so text and tooltip always derive from the same data. Crashed analysis runs now also surface as `setStatusBarError()` instead of a misleading "$(check) No issues found" tooltip. Closes [#179](https://github.com/fallow-rs/fallow/issues/179).
- **Health CRAP score no longer mismerges curried arrow functions that share a start line.** When two named arrow functions in the same file had identical line numbers (typical for one-line curried definitions like `const f = (a) => (b) => a + b`), the per-function CRAP merge collapsed them into a single record and double-counted coverage. The merge key now includes function name alongside `(file, line)` so curried arrows produce distinct CRAP entries.

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v2.48.4...v2.48.5

