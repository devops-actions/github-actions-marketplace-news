---
title: reflint reference-integrity linter
date: 2026-07-28 06:50:53 +00:00
tags:
  - hyuga611
  - GitHub Actions
draft: false
repo: https://github.com/hyuga611/reflint
marketplace: https://github.com/marketplace/actions/reflint-reference-integrity-linter
version: v0.7.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  `reflint` is an automated reference integrity linter for agent config files. It checks whether all references (scripts, paths, and files) mentioned in the `AGENTS.md`, `llms.txt`, or `CLAUDE.md` files exist. If any reference is broken, it fails CI, preventing stale configurations from being merged into a repository.
---


Version updated for **https://github.com/hyuga611/reflint** to version **v0.7.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/reflint-reference-integrity-linter) to find the latest changes.

## Action Summary

`reflint` is an automated reference integrity linter for agent config files. It checks whether all references (scripts, paths, and files) mentioned in the `AGENTS.md`, `llms.txt`, or `CLAUDE.md` files exist. If any reference is broken, it fails CI, preventing stale configurations from being merged into a repository.

## What's Changed


Precision hardening, driven by a real-world audit of **139 public `AGENTS.md` / `CLAUDE.md` /
`llms.txt` documents from 138 repositories** (2026-07), each checked against that repository's
actual file tree. v0.6.0 reported **608 broken references in 94 of 139 documents (68%)**.
Reviewed one by one, the large majority were not broken: v0.7.0 reports **181**, and ~80% of the
remaining path findings are genuine (a document pointing at a file that really isn't there).

- **References now resolve anywhere in the repository.** 47% of v0.6.0's findings were files that
  exist — just not at the path as written (`interactive_mode_test.go` in a doc,
  `internal/cli/interactive_mode_test.go` on disk). The CLI now builds a repository index and
  resolves a bare name by basename and a nested path by suffix, after trying the document's
  directory and the repository root.
- **`.gitignore` is respected.** A reference that git is told to ignore is absent on purpose —
  build output, runtime config, generated files. One audited document literally annotated its
  reference as "gitignored" and was still failed by the linter.
- **Extension-less references are only treated as paths when their first segment is a real
  directory.** Without this, repository names (`arnica/depsguard`), external repos
  (`aosp-mirror/platform_frameworks_base`), API groups (`coordination.k8s.io/leases`) and word
  pairs (`async/await`) were all reported as missing files. *Trade-off:* a genuinely broken
  extension-less path whose parent directory also doesn't exist is no longer reported.
- **`path::symbol` and `path:Symbol` resolve to the file part** (`src/pruner/budget.rs::find_x`,
  `utils/file_utils.py:FileProcessor`). Previously the whole string was looked up and never found.
- **More non-paths excluded**: `{placeholder}`, pseudocode with parentheses, quoted C includes,
  `...` ellipses, bare extensions (`.ts` in prose), leading `-` (CLI flags / CSS custom property
  lists), host-prefixed module paths, build output (`dist/`, `target/`, `.output/`, `.venv/` …),
  and expressions like `process.env`.
- Regression tests distilled from the audit: 11 false-positive shapes that must stay silent, plus
  genuine broken references that must stay caught.

## 0.6.0
## 0.5.1

False-positive and performance fixes found by running the linter over 32 real skills.

## 0.5.0
## 0.4.0

textlint-compatible rule (`@hyuga/reflint/textlint-rule`, experimental).

## 0.3.0
## 0.2.0

`llms.txt` reference integrity: markdown link targets are verified against the repository.
