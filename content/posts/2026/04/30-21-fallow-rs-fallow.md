---
title: Fallow - Codebase Intelligence
date: 2026-04-30 21:55:01 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-intelligence
version: v2.57.0
dependentsNumber: "27"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v2.57.0**.

- This action is used across all versions by **27** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-intelligence) to find the latest changes.

## Action Summary

This GitHub Action, Fallow, provides static and optional runtime analysis for TypeScript and JavaScript codebases to identify unused code, duplication, complexity issues, and architectural inconsistencies. It automates codebase health assessments, enabling developers to clean up dead code, reduce duplication, and address maintainability challenges without requiring extensive configuration. Fallow is optimized for fast, project-wide analysis and supports integration with AI-assisted development workflows.

## What's Changed

v2.57.0 ships `fallow coverage analyze` for runtime coverage, `fallow explain` for standalone rule lookup, an adoption-friendly `--gate` on `fallow audit`, workspace-aware `coverage setup --json`, and `.fallowrc.jsonc` as a discoverable config name.

## Features

### `fallow coverage analyze`

Focused runtime-coverage subcommand alongside `coverage setup` and `coverage upload-inventory`.

Local mode reads a V8 coverage directory, V8 JSON file, or Istanbul `coverage-final.json`:

```bash
fallow coverage analyze --runtime-coverage ./coverage --format json
```

Cloud mode is explicit opt-in only via `--cloud` / `--runtime-coverage-cloud` / `FALLOW_RUNTIME_COVERAGE_SOURCE=cloud`, fetches `/v1/coverage/{repo}/runtime-context` from fallow cloud, and merges runtime facts with the local AST/static analysis:

```bash
FALLOW_API_KEY=fallow_live_... fallow coverage analyze --cloud --repo owner/repo --format json
```

`FALLOW_API_KEY` alone never selects cloud mode. Ambiguous combinations (`--cloud --runtime-coverage <path>`) are rejected by clap and at runtime.

JSON output adds:

- `summary.data_source: "local" | "cloud"` (required)
- `summary.last_received_at` for cloud-pulled payloads
- `summary.capture_quality` derived from the runtime window (in cloud mode)
- `actions[].type` uses kebab-case identifiers `delete-cold-code` (verdict `safe_to_delete`) and `review-runtime` (verdict `review_required`)
- `cloud_functions_unmatched` warning when cloud sees functions absent from the local AST

`--explain` attaches a top-level `_meta` block with field definitions, enum vocabularies, warning-code documentation, and the docs URL.

### `fallow explain <issue-type>`

Prints a rule's rationale, worked example, fix guidance, and docs URL without running an analysis. Accepts shorthand (`unused-export`, `code-duplication`) and the canonical rule id (`fallow/unused-export`). JSON output is stable: `{ id, name, summary, rationale, example, how_to_fix, docs }`. The same data surfaces over MCP via the `fallow_explain` tool.

### `fallow audit --gate new-only|all`

Default `--gate new-only` fails only on findings introduced by the changeset, reporting inherited findings as context with a JSON `attribution` block plus per-finding `introduced: true|false`. `--gate all` (or `[audit] gate = "all"` in TOML, `audit.gate` in JSON) fails on every finding in changed files and skips the extra base-snapshot attribution pass.

### Workspace-aware `fallow coverage setup --json`

Workspace projects emit a per-runtime-package `members[]` array, union `runtime_targets`, and prefix member file paths. Pure aggregator roots and build-only library packages are filtered out. Four new paid runtime-context MCP tools (`get_blast_radius`, `get_importance`, `get_cleanup_candidates`, `check_runtime_coverage`) read the same fallow-cloud endpoint.

### `.fallowrc.jsonc`

JSON-with-comments is now a discoverable config name alongside `.fallowrc.json`. CLI `--config` accepts the new extension; init scaffolding and config docs cover it. Thanks [@filipw01](https://github.com/filipw01) for reporting that `ignoreDependencies` was silently ignored when set in a `.fallowrc.jsonc` file. (Closes [#231](https://github.com/fallow-rs/fallow/issues/231))

## Bug fixes

- Class members typed with a nullable annotation (`class Foo { bar: Baz | null }`) now correctly bind the annotated type for member-usage tracking, eliminating false `unused-class-member` findings on type-annotated nullable fields. Thanks [@pedrobgodoy](https://github.com/pedrobgodoy) for the fix. ([#233](https://github.com/fallow-rs/fallow/pull/233))
- Re-export chains are now followed transitively through chained barrel files (e.g. `packages/app` importing a symbol from `packages/ui` via `foo/index.ts` → `foo/bar/index.ts` → `foo/bar/baz/index.ts` → the leaf module), so symbols re-exported through deep barrel structures are no longer flagged as unused. Thanks [@filipw01](https://github.com/filipw01) for the StackBlitz repro. (Closes [#236](https://github.com/fallow-rs/fallow/issues/236))
- `--changed-since` git invocations no longer pick up an inherited `GIT_DIR` env var. The MCP tool name and `ExplainOutput` schema are corrected.
- A single local V8/Istanbul capture works again without a license, restoring the documented free-tier behaviour. Continuous/cloud monitoring still requires one.
- Runtime coverage builds pass clippy under the feature-gated configuration; several `coverage setup` rough edges (workspace recipe rendering, sidecar discovery messaging) are smoothed over.
- `coverage analyze --cloud`: switched to `Accept-Encoding: identity` (the bundled ureq build does not include the gzip feature). Empty-window responses no longer emit duplicate `no_runtime_data` warnings (the CLI defers to the server's variant). Markdown / compact / sarif / codeclimate / badge `--format` values are now rejected with an actionable error instead of silently emitting JSON. HTTP 400 from the cloud endpoint maps to exit 2 (validation), not exit 7. The 404 catch-all branch no longer attributes routing 404s to "Repo not accessible to your org". Cloud-merge IDs are 8 hex chars, matching the published JSON schema.

## Changed

- MCP runtime-coverage tool descriptions reflect the single-capture-free contract.
- CI enforces conventional commit messages.

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v2.56.0...v2.57.0

