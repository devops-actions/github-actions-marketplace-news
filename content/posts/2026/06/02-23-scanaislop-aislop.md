---
title: aislop Quality Gate
date: 2026-06-02 23:41:01 +00:00
tags:
  - scanaislop
  - GitHub Actions
draft: false
repo: https://github.com/scanaislop/aislop
marketplace: https://github.com/marketplace/actions/aislop-quality-gate
version: v0.10.2
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/scanaislop/aislop** to version **v0.10.2**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aislop-quality-gate) to find the latest changes.

## What's Changed

A patch release: safer release/CI plumbing and sharper scan consistency.

## Added
- **Suppression directives** — silence an intentional finding inline: `// aislop-ignore-next-line [rule...]`, `// aislop-ignore-line [rule...]`, or `// aislop-ignore-file [rule...]`. Scope to named rules or omit to silence every rule on the line, and add a reason after `--`. Works in any comment syntax. Suppressed findings are dropped before scoring and reported as a count.
- **`.aislopignore`** — a root-level ignore file (same glob semantics as the `exclude` config) to keep whole paths out of every scan.
- **`aislop fix --safe`** — an opt-in mode restricted to behaviour-preserving fixes (unused-import removal, import merging, narrative-comment removal, formatting). Anything that deletes code or rewrites behaviour is skipped. The default `fix` is unchanged.
- Action smoke coverage across default/explicit `latest`, pinned npm-version, JSON, human, and node-version-override modes.

## Changed
- **Coverage gate** — the numeric score is now withheld when only a negligible fraction of a repo is analysable: no files in a supported language, or unsupported-language code (C, C++, C#, Swift, Kotlin, etc.) outnumbering supported files by more than three to one. `--json` returns `score: null` with `scoreable: false` and a `coverage` breakdown, and `ci` does not gate on a withheld score.

## Fixed
- **No-downgrade guard** on `aislop fix -f`: a dependency override that would pin a package below the installed version is skipped and reported, not applied.
- **CVE root-cause collapse**: a transitive vulnerability is attributed to the package that carries the advisory instead of emitting a near-duplicate finding for every intermediate package.
- **Python comma imports**: `import os, sys` is now handled per-module instead of deleting the whole line when one module is unused.
- **Hook telemetry**: `aislop hook <agent>` flushes its event before the process exits (bounded to 1.5s) instead of dropping it.
- **GitHub Action exact-version pins**: pins such as `version: "0.10.1"` run from an isolated temp directory so npm resolves the published package, not a checked-out local one.
- **Rule catalog consistency** across `aislop rules`, rule labels, and `docs/rules.md`.
- **Empty-function detection**: `ai-slop/empty-function` recognises normal function declarations, not only arrow stubs.

## Tests
1029 passing; self-scan 100/100 with zero diagnostics.

---
Install: `npx aislop@0.10.2 scan` · `npm i -g aislop@0.10.2`

