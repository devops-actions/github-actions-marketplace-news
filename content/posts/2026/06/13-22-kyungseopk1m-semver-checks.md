---
title: semver-checks
date: 2026-06-13 22:14:20 +00:00
tags:
  - kyungseopk1m
  - GitHub Actions
draft: false
repo: https://github.com/kyungseopk1m/semver-checks
marketplace: https://github.com/marketplace/actions/semver-checks
version: v0.6.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/kyungseopk1m/semver-checks** to version **v0.6.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/semver-checks) to find the latest changes.

## What's Changed

## Highlights

- **Multiple entry points** — every subpath in a `package.json` "exports" map is now extracted and compared on its own. A new subpath is a minor change, a removed one is major, and a change inside a subpath is reported as `./utils#symbol`. For projects without an exports map, repeat `--entry` or comma-separate it (`--entry src/index.ts,src/utils.ts`).
- **Smarter generic comparison** — a pure type-parameter rename (`<T>` → `<S>`) is recognised as a no-op through an AST-based rewrite, and bare generics resolve against a shared type-parameter scope so safe widening and narrowing under that scope stop reading as breaking. Conditional types, `infer`/mapped binders, and unresolved symbols that collapse to `any` are guarded, so a real change behind one surfaces instead of hiding.
- **Broader API-surface coverage** — generic-parameter defaults, constructor parameter properties, get/set accessors (including a distinct setter type), and interface call/construct/index signatures are now compared, so these no longer slip through as a false patch.
- **Hardened MCP `semver_diff`** — every leaf of an input snapshot is validated, so a malformed payload can no longer surface as a silent patch.

**Breaking:** `ApiSnapshot.symbols` is now `ApiSnapshot.entrypoints`, keyed by export subpath (`'.'` is the root entry). `CompareOptions.entry` accepts `string[]`.

**Full Changelog**: https://github.com/kyungseopk1m/semver-checks/compare/v0.5.0...v0.6.0

