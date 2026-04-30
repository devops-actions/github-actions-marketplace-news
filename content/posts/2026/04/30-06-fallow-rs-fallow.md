---
title: Fallow - Codebase Intelligence
date: 2026-04-30 06:03:04 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-intelligence
version: v2.56.0
dependentsNumber: "24"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v2.56.0**.

- This action is used across all versions by **24** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-intelligence) to find the latest changes.

## Action Summary

This GitHub Action provides static and optional runtime analysis for TypeScript and JavaScript codebases, helping developers identify and address issues such as unused code, duplication, complexity, and architecture drift. It automates codebase health assessments, offering actionable insights for cleanup, refactoring, and enforcing best practices, while also supporting runtime intelligence for production insights. The tool is lightweight, requires no initial configuration, and is optimized for fast performance, making it ideal for improving code quality and aiding AI-assisted development workflows.

## What's Changed

Monorepo workspace packages now check like external dependencies, Tailwind v4 `@plugin` is recognised, and `fallow fix --yes` removes whole `export enum` blocks instead of leaving dead shells.

## Added

- **`fallow fix --yes` removes unused exported enum declarations entirely.** When an exported `enum` is unused outside its file, the whole `export enum Foo { ... }` block is dropped instead of leaving a non-exported zombie declaration. Covers single-line, multi-line, `export const enum`, and `export declare enum` forms, with safe descending-index ordering when other export-list lines on the same file also get rewritten. Falls back to keyword-only stripping when the enum is still referenced locally so the file continues to compile. The remove-export action description in JSON output and the `fix_apply` MCP tool description are refreshed so consumers see the broader behaviour.
- **All-member enum-member removal folds into whole-enum removal.** When `fallow fix --yes` would remove every member of an exported enum, the entire `export enum X { ... }` block is dropped in a single write instead of stripping members one at a time and leaving behind a syntactically valid but semantically dead `export enum X {}` shell that detection then fails to surface on the next pass. JSON output collapses the per-member entries for a folded enum into a single `remove_export` entry at the declaration line so consumers see exactly the edit that happened. Non-JSON output emits a stderr advisory pointing at the TypeScript build for importer cleanup, since fallow's reachability detector cannot surface a name-level dangling import once the file resolves successfully. Thanks @mjfwebb for reporting. (Closes #232)
- **Tailwind v4 `@plugin` directive recognised in CSS, SCSS, and Vue/Svelte `<style>` blocks.** `@plugin "..."` is parsed as a default import, so package plugins (`daisyui`, `@tailwindcss/typography`) are credited as used dependencies and relative plugin files have their default export marked used. Unlike SCSS `@use`, extensionless package names stay bare in `.scss`/`.sass` files because they are package specifiers, not local partials. Verified against `daisyui`'s own `packages/playground`: without the fix, `daisyui` is flagged as an unused dev dependency; with the fix, it is correctly credited via `@plugin "daisyui"`. Thanks @filipw01 for reporting. (Closes #230)

## Changed

- **Workspace packages treated as first-class dependencies.** Workspace package names are now checked the same way as external npm packages: resolved internal-module imports whose specifier matches a workspace name are credited to package usage, so monorepo edges between workspace packages count as usage. Declared-but-unimported workspace deps now surface in `unused_dependencies`, and imports of a workspace package from a workspace whose own `package.json` does not list it surface in `unlisted_dependencies`. Self-references stay allowed without requiring a package to depend on itself. External plugin definitions (`fallow-plugin-*` / inline framework configs) now also activate per-workspace inside `run_workspace_fast`, so a custom plugin enabled by a workspace dependency keeps its `alwaysUsed` and `toolingDependencies` honored during real analysis instead of only appearing in `fallow list --plugins`. Verified against `vue-core` (real pnpm monorepo): the change surfaces 3 new unused-dependency findings (incl. `@vue/reactivity` declared but only referenced via `declare module` in `runtime-dom`) and 11 new unlisted-dependency findings on `@vue/*` internal packages. Thanks @filipw01 for reporting. (Closes #228)

## Fixed

- **Enum-member fix dedup keys on full triple so single-line folds fire.** The sort + dedup of `EnumMemberFix` previously used `line_idx` alone, which collapsed distinct members of a single-line enum (`export enum E { A, B }`) down to one entry before `detect_folded_enums` could see them. The fold's all-members-removed check then concluded the body still held member `B` and refused to fire, leaving a half-stripped one-liner instead of the whole-block delete the fold path expects. Sort and dedup now use `(line_idx desc, parent, member)`, so same-line distinct members survive into the fold pass.

## Internal

- Enum-declaration helpers (`declares_exported_enum`, `find_enum_declaration_range`, `removable_exported_enum_range`, supporting identifier-boundary helpers) extracted from `fix/exports.rs` into a new `fix/enum_helpers.rs` sibling module with `pub(super)` visibility, so both `exports.rs` and `enum_members.rs` can share them without re-implementation. No behaviour change.

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v2.55.0...v2.56.0

