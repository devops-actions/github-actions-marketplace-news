---
title: QWED Protocol Verification
date: 2026-06-14 22:15:35 +00:00
tags:
  - QWED-AI
  - GitHub Actions
draft: false
repo: https://github.com/QWED-AI/qwed-verification
marketplace: https://github.com/marketplace/actions/qwed-protocol-verification
version: v5.1.2
dependentsNumber: "0"
actionType: Docker
---


Version updated for **https://github.com/QWED-AI/qwed-verification** to version **v5.1.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/qwed-protocol-verification) to find the latest changes.

## What's Changed

## v5.1.2 — Security Patch

**This is an emergency patch release.** Fixes a **High severity (CVSS 8.8) authenticated RCE vulnerability** (CWE-95) in SymPy's `parse_expr()` across all math verification paths.

### Security

- **CWE-95 mitigation**: Added `safe_parse_expr()` — denylist + stripped `__builtins__` + allow-listed math namespace + per-call global dict copy + pre/post-parse validation. Replaced all direct `parse_expr()` call sites in `main.py`, `verifier.py`, `batch.py`, and `validator.py`.
- **Calculus symbol consistency**: Added `get_safe_symbol()` to match SymPy symbol assumptions (e.g., `n` as `integer=True, positive=True`) — prevents incorrect `diff`/`integrate`/`limit` results.
- **Defense-in-depth**: Pre-parse AST depth limit, post-parse SymPy tree depth validation, `sympy.Expr` type enforcement (rejects relationals like `x < y`), `extra_symbols` key/value validation, sanitized exception handling.

### Fixes

- **Cache Redis fail-closed**: Enforced fail-closed Redis backend for distributed cache mode ([#199](https://github.com/QWED-AI/qwed-verification/pull/199))
- **CodSpeed benchmarks**: Performance benchmark workflow added ([#198](https://github.com/QWED-AI/qwed-verification/pull/198))
- **TS SDK**: Restored `package-lock.json` for reliable `npm ci` in publish workflow ([#197](https://github.com/QWED-AI/qwed-verification/pull/197))

### Version Updates

| Artifact | Version |
|---|---|
| qwed (PyPI) | 5.1.2 |
| qwed_sdk (Python) | 5.1.2 |
| @qwed-ai/sdk (NPM) | 5.1.2 |
| qwed (Rust crate) | 5.1.2 |
| API version header | 5.1.2 |
| Docker image | `docker.io/qwedai/qwed-verification:5.1.2` |

### Included PRs

- [#197](https://github.com/QWED-AI/qwed-verification/pull/197) fix(ts-sdk): lockfile restore
- [#198](https://github.com/QWED-AI/qwed-verification/pull/198) ci: CodSpeed benchmarks
- [#199](https://github.com/QWED-AI/qwed-verification/pull/199) fix(cache): fail-closed Redis backend
- [#200](https://github.com/QWED-AI/qwed-verification/pull/200) fix(math): restrict SymPy expression parsing (CWE-95)
- [#201](https://github.com/QWED-AI/qwed-verification/pull/201) chore(release): v5.1.2 version bump

**Credits:** Vulnerability discovered by Sebastion (sebastiondev) via Foundation Machines and independently confirmed by EQSTLab. Fix reviewed and hardened by the QWED team.

**Full Changelog:** [v5.1.1...v5.1.2](https://github.com/QWED-AI/qwed-verification/compare/v5.1.1...v5.1.2)
