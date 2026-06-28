---
title: Tribunal PR Gate
date: 2026-06-28 14:55:21 +00:00
tags:
  - eviano
  - GitHub Actions
draft: false
repo: https://github.com/eviano/tribunal
marketplace: https://github.com/marketplace/actions/tribunal-pr-gate
version: v0.2.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/eviano/tribunal** to version **v0.2.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/tribunal-pr-gate) to find the latest changes.

## What's Changed

The first release since the 0.1.x line. Eight PRs, each validated by the project's own dogfood CI action on its own diff. Tests grew 54 → 152; the seed bench stayed at 20 cases with FP=0, FN=0 throughout. No breaking changes to existing APIs.

The Trust Contract governs everything: the build gates only on 🔴 `CONTRADICTED` (a syntactic certainty); 🟡 `UNVERIFIED` never blocks; no LLM is ever in the verification path.

## ✨ Added

- **`tribunal propose`** ([#3](https://github.com/eviano/tribunal/pull/3)) — an LLM-*proposer* that turns a diff into a claims block for the deterministic `check` to adjudicate. Activates the previously-dormant claim-reconciliation moat. Pluggable OpenAI-compatible provider, two-step flow, mandatory send-guard. The LLM can never manufacture a `CONTRADICTED`.
- **`risky-diff-no-test`** ([#2](https://github.com/eviano/tribunal/pull/2)) — a signal analyzer (SPEC §3.7) for risky diffs with no correlated test. UNVERIFIED-only.
- **`comment-code-drift`** ([#7](https://github.com/eviano/tribunal/pull/7)) — the last spec'd analyzer (SPEC §5a). Flags comments referencing changed code. UNVERIFIED-only. Completes the §5a analyzer set.
- **SARIF output** ([#4](https://github.com/eviano/tribunal/pull/4)) — `--format sarif` for GitHub code-scanning alerts. Stable fingerprints; CONTRADICTED→error, UNVERIFIED→note, PASS→omitted.
- **`tribunal.yml` config** ([#6](https://github.com/eviano/tribunal/pull/6)) — per-analyzer enable/disable + extra generated-path patterns. Extend-defaults; fail-loud; zero-dep YAML parser.
- **CONTRIBUTING.md + SECURITY.md** ([#8](https://github.com/eviano/tribunal/pull/8)).

## 🔧 Changed

- **`no-public-api-change` now aggregates** the exported-symbol set across changed files ([#1](https://github.com/eviano/tribunal/pull/1)) — a refactor moving an export between two changed files is no longer a false `CONTRADICTED`.
- **`risky-diff-no-test` skips generated paths** ([#5](https://github.com/eviano/tribunal/pull/5)) by default (`dist/`, `action-dist/`, `*.min.js`, …). Override with `--no-skip-generated`.

## 🐛 Fixed

- **`parseUnifiedDiff` no longer silently drops plain unified diffs** ([#1](https://github.com/eviano/tribunal/pull/1)) — a `--- /+++ ` patch previously parsed to `[]`.
- **Node.js built-ins are no longer flagged** ([#8](https://github.com/eviano/tribunal/pull/8)) — `node:fs`/`node:crypto`/`node:path` no longer fire `🟡 Unresolved package import`.

---

**npm:** `npm install @eviano/tribunal@0.2.0` (publish pending — see release comment).

**Full diff:** https://github.com/eviano/tribunal/compare/v0.1.2...v0.2.0
