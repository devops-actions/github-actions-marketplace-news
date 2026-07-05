---
title: Setup runner cli
date: 2026-07-05 14:58:03 +00:00
tags:
  - kjanat
  - GitHub Actions
draft: false
repo: https://github.com/kjanat/runner
marketplace: https://github.com/marketplace/actions/setup-runner-cli
version: v0.19.0
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/kjanat/runner** to version **v0.19.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-runner-cli) to find the latest changes.

## What's Changed

### Added

- `doctor --json` `overrides` now reports every resolver override state
  except `parent_group_open` (internal runner-to-runner plumbing, never a
  user override): `failure_policy`, `install_pms`, `output_grouping`
  (`group_output`/`github_group_parallel`/`parallel_grouped`),
  `prefer_sources`, `script_policy`, and `task_source_pins`. Previously
  only `pm`/`pm_by_ecosystem`/`runner`/`prefer_runners`/`fallback`/
  `on_mismatch`/`explain`/`no_warnings`/`quiet` were surfaced, so `-k`/`-K`,
  `[tasks].prefer`, `[tasks.overrides]`, `[install]`, and `[github]`/
  `[parallel]` config could be set without `doctor` ever showing it.

### Changed

- **Breaking:** `doctor --json` and `why --json` now always emit the
  structured report (previously reachable via `--schema-version 3`); the
  flat v1/v2 shape is gone from both. `--schema-version` now only accepts
  `1`; `2`/`3` are rejected.
- `runner config init`'s scaffold is now generated from `RunnerConfig`'s
  schemars metadata instead of hand-typed: section headers and their
  leading comments come straight from the section structs' doc comments,
  and every enum-valued field's inline hint (`pm.node`, `pm.python`,
  `resolution.fallback`, `resolution.on_mismatch`, `install.scripts`,
  `task_runner.prefer`) is generated from the same types the resolver
  parses those values with, not hand-typed prose. A config field, or an
  accepted value for one of these, can no longer ship without scaffold
  coverage — drift-guard tests fail the build instead. A few section
  descriptions read slightly differently as a result. `FallbackPolicy`,
  `MismatchPolicy`, and `ScriptPolicy` gained real `label()`/`ALL` (or
  `SETTABLE`) methods, replacing four separate hardcoded copies of their
  accepted strings (parse function, two display call sites, and now the
  scaffold) with one.

### Removed

- The v1/v2/v3 schema split. Not enough external adoption yet to justify
  carrying three versions per surface — today's shape is the only one,
  retroactively called v1. Committed schema files dropped their version
  suffix (`doctor.v3.schema.json` → `doctor.schema.json`, etc.); the 10
  superseded schema/example files are deleted.

- `doctor --json` `overrides.fallback`, `on_mismatch`, `pm`,
  `pm_by_ecosystem`, `runner`, and `prefer_runners` are now closed enums in
  `doctor.schema.json` (with the accepted values documented per variant),
  not generic strings — editors and validators can now catch a typo'd
  override value against the committed schema instead of silently
  accepting anything. `pm_by_ecosystem`'s keys are constrained the same
  way: the schema now lists the seven ecosystem names explicitly instead
  of allowing any string key, and its values are plain (non-nullable)
  package-manager labels — the report never emits a `null` there.
  `failure_policy`, `script_policy`, and `install_pms` (new fields, see
  Added above) get the same closed-enum treatment from the start.

### Fixed

- `runner schema --all` no longer surfaces a raw Rust panic if the
  init-template generator ever drifts from `RunnerConfig` in a released
  binary (the drift-guard test should already catch this before merge);
  it now reports a clean CLI error instead.
- `doctor --json` `overrides.quiet` is now listed as required in
  `doctor.schema.json`, like every other boolean override — it was kept
  optional for compatibility with the pre-collapse `doctor` v3 schema,
  which this same release already removed.
- `runner lsp` diagnostics for a wrong-typed known field (e.g.
  `pms = "bun"`) now point at the offending value instead of line one.
- `runner lsp` value completion for sequence-typed fields
  (`[install].pms`, `[tasks].prefer`, `[task_runner].prefer`) wraps the
  first element as `["bun"]` when no `[` is typed yet — accepting a
  completion previously inserted a bare scalar, minting the exact type
  error above. Inside an open `[` the element stays bare.
- `runner lsp` header completion after a dotted partial (`[tasks.`) now
  offers only that parent's sub-tables (`overrides`) instead of the full
  top-level section list, and offers nothing under a parent with no
  sub-tables (`[github.`). Deprecated sections and fields
  (`[task_runner]`) now carry the LSP deprecated tag (strikethrough) in
  completions and a deprecation banner in hover.

## What's Changed
* fix(schema): close 3 findings from #77; fix release-URL regression by @kjanat in https://github.com/kjanat/runner/pull/79
* feat(schema)!: collapse doctor/why/list versioning to a single v1 by @kjanat in https://github.com/kjanat/runner/pull/82
* feat(schema): surface all ResolutionOverrides fields in `doctor --json` by @kjanat in https://github.com/kjanat/runner/pull/83
* fix(lsp): span type errors, array-aware and dotted-header-aware completion by @kjanat in https://github.com/kjanat/runner/pull/84


**Full Changelog**: https://github.com/kjanat/runner/compare/v0.18.1...v0.19.0

