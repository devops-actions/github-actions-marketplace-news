---
title: semver-checks
date: 2026-06-27 22:21:52 +00:00
tags:
  - kyungseopk1m
  - GitHub Actions
draft: false
repo: https://github.com/kyungseopk1m/semver-checks
marketplace: https://github.com/marketplace/actions/semver-checks
version: v0.7.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/kyungseopk1m/semver-checks** to version **v0.7.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/semver-checks) to find the latest changes.

## What's Changed


This release makes the gate trustworthy enough to leave on in CI. Every breaking change now carries a **confidence** — `proven` (a structural fact or a resolved type relation) or `heuristic` (a conservative MAJOR the analyzer could not prove safe) — and `--strict` gates on `proven` only. The equivalence-preserving rewrites and input-union widenings that made text-based type-semver tools cry wolf now land in `heuristic`, off the default gate, while real under-bumps stay `proven` and on it. It also lands the entry-resolution and diagnostics work accumulated since 0.6.1, plus a reproducible accuracy probe. The full regression battery stays green; no breaking-change detection was weakened.

### Added

- **Graded confidence on every change**: `ApiChange.confidence` is `'proven'` or `'heuristic'`. A break is `proven` when it follows from a structural fact (member added/removed, optionality/readonly/static transition, enum/overload change, removed export) or from a type comparison the analyzer resolved as genuinely unrelated; it is `heuristic` when the severity is a conservative fallback — an unresolved type-text comparison, a one-directional relation in an invariant position (e.g. input-union widening), a constraint/default text difference, a call/construct/index-signature change, or a return-only generic added to a function. `SemverReport.summary` gains `majorProven` and `majorReview` (`majorProven + majorReview === major`).
- **`--strict-review` flag**: exits 1 on _any_ breaking change, including review-only (`heuristic`) ones — the previous `--strict` behaviour, now opt-in.
- **Object-literal type-alias decomposition**: a bare `type X = { ... }` alias is now diffed member-by-member like an interface, so an added required property is a `proven` `required-property-added` (e.g. `p-limit` `LimitFunction.concurrency`, `ky` `KyInstance.retry`) instead of an opaque, review-only `type-alias-changed`. Non-object aliases (union / conditional / mapped / intersection / function type) keep their whole-text comparison.
- **Confidence in every reporter**: `text` and `markdown` split MAJOR into a confident section and a "needs review — couldn't prove safe" section; `github` emits `::error::` for `proven` and `::warning::` for `heuristic`; `json` and the MCP tools include `confidence` on each change and the `majorProven`/`majorReview` summary fields.
- **Reproducible accuracy probe** (`scripts/accuracy-probe.mjs`): runs the built CLI against 44 frozen real-world npm release pairs and prints the shape × outcome matrix plus the proven/review split behind the README's "Accuracy & Limitations" numbers. Zero dependencies; not shipped in the published package.
- **Actionable resolution errors**: an opaque `npm pack` / `git archive` / entry-detection failure is now reformatted into one line — a missing `npm`/`git` binary, an unpublished spec (`E404`), a registry network issue, a ref that doesn't exist, or a "looked here, pass `--entry`" hint — instead of dumping raw tool output. When the analyzed project has TypeScript errors, the snapshot warning now spells out that the result may under-report breaking changes.

### Changed

- **`--strict` now gates on confident breaks only** (BREAKING): it exits 1 when a `proven` MAJOR is present, not on every MAJOR. A release whose only breaking changes are `heuristic` (the surfaces in the README's Known limitations) now passes `--strict`; use `--strict-review` for the prior "any MAJOR fails" behaviour.
- **`SemverReport.summary` gains required `majorProven` / `majorReview` fields** (BREAKING for code that constructs a `SemverReport`; additive for code that reads one).

### Removed

- **Snapshot-pair diffing in MCP** — the `semver_diff` tool (BREAKING for MCP clients that called it): `semver_compare` already extracts both sides and diffs them in a single call, so `semver_diff` only added a second path that required an agent to round-trip two full JSON snapshots through its context. Diff a pair of versions with `semver_compare`; use `semver_snapshot` on its own to inspect a single API surface.

### Fixed

- **Flat-conditions and bare-string `exports` entry resolution**: a package whose `exports` has no `.` subpath key — a flat conditions object (`{ "types": "./index.d.ts", "default": "./index.js" }`) or a bare string (`"exports": "./index.js"`) — now resolves its entry. Previously the resolver read `exports['.']`, found `undefined`, and never looked at the `types` condition, so trivial packages like `p-limit`, `execa`, and `escape-string-regexp` failed with "Could not find an entry file."
- **Conventional root declaration fallback**: packages with no `exports`/`types` fields (older single-file libs such as `chalk` 4.x's `{ "main": "source" }`) now fall back to a root `index.d.ts` / `.d.mts` / `.d.cts`.
- **`exports` fallback arrays** (`[{ types, default }, "./index.js"]`) are walked when resolving the entry.
- **Subpath-only `exports` no longer fabricate a root surface**: a package whose `exports` is a subpath map with no `.` root is not analyzed from a stray root `index.d.ts` _or_ an internal `src/index.ts` (neither is a public entry), so a subpath-only package with an unbuilt `dist/` fails loudly instead of reporting a non-exported surface — which across versions would also produce a spurious `entrypoint-added`/`entrypoint-removed`.
- **Property/method shorthand is no longer a breaking change**: a member written as a function-typed property on one side and a method on the other — `{ f: () => void }` vs `{ f(): void }`, which TypeScript treats as mutually assignable — is reconciled as a single member instead of a `property-removed` plus a `required-method-added` (two false `proven` MAJORs that failed `--strict`). A genuine signature incompatibility across the switch still reports `property-type-changed`. This covers object-literal type aliases too, which are diffed through the interface path.
- **Type-parameter constraint/default changes survive a `type` ⇆ `interface` conversion**: converting `type Box<T extends string> = { v: T }` to `interface Box<T extends number> { v: T }` now reports the `generic-constraint-changed` break instead of treating the same-shape conversion as no change.
- **Function types in a union or intersection keep their parentheses**: serializing `((a: string) => void) & ((a: number) => void)` no longer drops the inner parentheses (which re-parsed as a single function returning an intersection). Such members now round-trip correctly, so the variance probe can resolve them instead of bailing to a conservative major — a reordered or restructured function union/intersection that is genuinely equivalent is recognised as a no-op, while a real change is still reported.


