---
title: Fallow - Codebase Intelligence
date: 2026-07-13 16:40:22 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-intelligence
version: v3.4.2
dependentsNumber: "307"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v3.4.2**.

- This action is used across all versions by **307** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-intelligence) to find the latest changes.

## What's Changed

## Suppression governance

- **`fallow suppressions`**: a read-only inventory of every active suppression marker, grouped per file with line, kind, level, and reason, plus project totals and a stale count cross-referenced from this run's findings. Teams governing tech debt (and agents that should distrust a "clean" verdict) no longer grep for `fallow-ignore` by hand. Ships with `--format json` (new `suppression-inventory` envelope) and full workspace/changed/file scoping; always exits 0.
- **MCP tool `list_suppressions`** exposes the same inventory to agents on the MCP surface, returning the JSON envelope verbatim.
- **Every "To suppress:" hint in the human footer now names a token fallow actually parses.** Eight sections printed tokens the parser does not recognize, so following the hint suppressed nothing and then surfaced a stale-suppression finding on top. Hint tokens now derive from the issue registry, backed by a roundtrip guard test. Thanks [@slyeargin](https://github.com/slyeargin) for catching the unused-files case in [#1820](https://github.com/fallow-rs/fallow/pull/1820).

## Native GitHub workflow output

- **`--format github-annotations` and `--format github-summary`**: inline PR annotations (`::error` / `::warning` / `::notice` workflow commands) and job-summary markdown straight from the CLI, no bundled action required. Both are log-based, so they render on fork PRs without a write token.
- **`fallow report --from <results.json>`**: analyze once with `fallow --format json -o results.json`, then render annotations and the job summary from the saved envelope, byte-identical to the direct run.

## Monorepo CI paths

- **Behavior change: CI-facing formats emit repository-root-relative paths when `--root` is a subdirectory.** GitLab's Code Quality widget matched nothing and inline review discussions were rejected when the analyzed project lived in a package subdirectory, because `codeclimate`, `review-github`, and `review-gitlab` addressed files relative to `--root`. All CI formats now share one namespace, detected via the git toplevel; pass `--report-path-prefix ''` to restore the old output. Single-package repositories are unaffected. See [docs/backwards-compatibility.md](https://github.com/fallow-rs/fallow/blob/main/docs/backwards-compatibility.md) for the classification rationale.
- **`--annotations-path-prefix` is now `--report-path-prefix`** and governs every CI-facing format; the old name keeps working as an alias.
- **`--diff-file` resolves the diff's path namespace from the diff itself**, so changed-file filtering works in monorepo packages for both `git diff` conventions; a diff that parses but touches no analyzable files filters to zero findings, and an unplaceable diff warns and reports at full scope instead of producing a plausible-looking empty report. Renamed files keep their `old_path` in `review-gitlab`. Thanks [@Jerc92](https://github.com/Jerc92) for the diagnosis and the patch in [#1808](https://github.com/fallow-rs/fallow/pull/1808).

## unused-class-members accuracy

Four extraction gaps produced false positives on dependency-injection-style code, reported across three issues by adopters running the rule on real codebases:

- `this.#dep.method()` receivers through `#`-private class fields now credit the target class cross-module, and same-named fields on sibling classes in one module no longer collide on a shared binding key (previously last-write-wins: only the class declared last credited its dependency's members). Thanks [@martijnwalraven](https://github.com/martijnwalraven) for the report with its isolation matrix ([#1821](https://github.com/fallow-rs/fallow/issues/1821)).
- Members reached through a local (non-exported) subclass, factory results read without a named binding (`f().member`, `const { member } = f()`), and opaque destructures now credit correctly. Thanks [@Jerc92](https://github.com/Jerc92) for the fixes in [#1811](https://github.com/fallow-rs/fallow/pull/1811).
- Playwright page-object methods used through a `mergeTests(...)`-wrapping helper are credited, including imported `<base>.extend(...)` wrappers. Thanks [@committedpazz](https://github.com/committedpazz) for the follow-up report ([#1795](https://github.com/fallow-rs/fallow/issues/1795)).
- Iteration over array-typed parameters (`items: Item[]`) and `Promise.all(arr.map(cb))` results now types the iteration variable, so `for...of` and `.map` member accesses credit the class. Thanks [@vethman](https://github.com/vethman) for the report ([#1793](https://github.com/fallow-rs/fallow/issues/1793)).

## Fixes and improvements

- **`fallow audit`'s base-snapshot cache no longer appears in `git worktree list` or IDE repo views**; snapshots are unregistered immediately after materialization, and entries from earlier versions deregister automatically on the next audit with warm caches preserved. Thanks [@AlonMiz](https://github.com/AlonMiz) for the report ([#1815](https://github.com/fallow-rs/fallow/issues/1815)).
- **Generated configs point `$schema` at the local `node_modules/fallow/schema.json` when present**: offline, no VS Code trust prompt, always version-aligned. Non-npm installs keep the remote fallback. Thanks [@vethman](https://github.com/vethman) for the report ([#1794](https://github.com/fallow-rs/fallow/issues/1794)).
- **The repository Dockerfile's pinned version and checksums now track releases automatically** via a post-release job ([#1817](https://github.com/fallow-rs/fallow/issues/1817)).
- Reusable analysis sessions share parsed-module storage across warm queries, and contract regeneration promotes committed outputs as a transaction.
- The `fallow` npm launcher and Node bindings now require Node.js 22 or later.

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v3.3.0...v3.4.2

