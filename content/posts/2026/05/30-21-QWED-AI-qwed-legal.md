---
title: QWED Legal Verification
date: 2026-05-30 21:45:24 +00:00
tags:
  - QWED-AI
  - GitHub Actions
draft: false
repo: https://github.com/QWED-AI/qwed-legal
marketplace: https://github.com/marketplace/actions/qwed-legal-verification
version: v0.4.0
dependentsNumber: "0"
actionType: Docker
---


Version updated for **https://github.com/QWED-AI/qwed-legal** to version **v0.4.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/qwed-legal-verification) to find the latest changes.

## Action Summary

QWED-Legal is a GitHub Action designed to verify deterministic legal claims, such as dates, amounts, and structured constraints, within AI-driven legal workflows. It acts as a fail-closed middleware layer, rejecting unverifiable or ambiguous outputs to prevent liabilities and ensure computational accuracy. This tool addresses risks associated with untrusted AI-generated legal content, such as fabricated authority, deadline miscalculations, and clause inconsistencies.

## What's Changed

# QWED-Legal v0.4.0

> Verification traces across all guards, fail-closed hardening, and SDK parity.

This release moves QWED-Legal from "guards that return pass/fail" to "guards that return an **auditable, evidence-typed verification trace**" — without overclaiming proof where only heuristics exist. It also closes a trust-boundary issue in `FairnessGuard` and brings the TypeScript SDK to parity with the Python contract.

**114 commits since v0.2.0 · 15+ hardening issues closed · 286 tests passing**

---

## Highlights

- 🔍 **`verification_trace` on every guard** — ordered, auditable decision records (not narrative explanations).
- 🏷️ **Evidence taxonomy** — every step is tagged `DETERMINISTIC | PARSED | INFERRED | HEURISTIC | UNSUPPORTED`; `is_proven()` is true **only** for `DETERMINISTIC`.
- 🔒 **Fail-closed everywhere** — unsupported / empty / malformed inputs never produce a success-like result.
- ⚖️ **FairnessGuard no longer overclaims** — it can never return `verified=True` (resolves the #18 trust-boundary issue).
- 📦 **JSON-safe trace export** — `to_dict()` / `trace_to_dict()` for audit logs.
- 🟦 **TypeScript SDK parity** — traces, fairness, and citation semantics now match Python.

---

## Verification Improvements

- Introduced a shared `VerificationStep` model and `verification_trace` on **all guards**.
- Added the `evidence_type` taxonomy with a strict contract: only `DETERMINISTIC` steps constitute proof. `PARSED`, `INFERRED`, `HEURISTIC`, and `UNSUPPORTED` are visible but must never be treated as verification.
- Added `VerificationStep.to_dict()` and `trace_to_dict()` for JSON-safe serialization. Non-serializable input values are stringified (no silent data loss); each serialized step carries an explicit `is_proven` flag.

| evidence_type | Meaning | `is_proven()` |
|---------------|---------|:-------------:|
| `DETERMINISTIC` | Proven by math/logic (Z3, date arithmetic, exact compare) | ✅ |
| `PARSED` | Read/matched from structure or lookup — not authority proof | ❌ |
| `INFERRED` | Pattern/keyword derived — may be wrong on edge cases | ❌ |
| `HEURISTIC` | Approximate/statistical signal | ❌ |
| `UNSUPPORTED` | Guard cannot model this input — fail-closed | ❌ |

---

## Security Hardening

- **JurisdictionGuard:** fail-closed on empty `parties_countries` in both `verify_choice_of_law` and `check_convention_applicability` (fixed an `all([])` fail-open).
- **JurisdictionGuard:** forum warnings now fail verification, consistent with choice-of-law.
- **DeadlineGuard:** business-day results fail closed when the requested holiday calendar can't be built — no silent fallback to the wrong calendar.
- **FairnessGuard:** rejects non-string and case-colliding swap keys; fail-closed on incomplete input.
- **TypeScript SDK:** removed a remote-code-execution vector — the fairness client factory is now resolved via a validated `importlib` descriptor instead of evaluating a raw string.

---

## Trust-Boundary Changes

- **CitationGuard:** format match is `PARSED`; authority is always `UNSUPPORTED` and `verified` is always `False` — format validity is not proof a cited authority exists.
- **IRACGuard:** structure is `INFERRED`; reasoning correctness is always `UNSUPPORTED`.
- **StatuteOfLimitationsGuard / ContradictionGuard:** documented as `MIXED` — a deterministic core (date arithmetic / Z3 SAT-UNSAT) over a parsed lookup; unmodeled inputs fail closed.
- **DeadlineGuard:** on date parse failure, dates are now `None` (was `datetime.min`), matching the `string | null` contract so consumers can detect failures correctly.

---

## SDK Changes (TypeScript / `@qwed-ai/legal`)

- Every result interface now exposes `verification_trace` (`VerificationStep[]`).
- Added `FairnessVerifier` reflecting the fail-closed fairness contract; `verified` is hardcoded `false` at the boundary (defense-in-depth against any Python-side skew).
- `CitationResult` now exposes `format_valid` / `status` / `verified: false`.
- `ClauseResult.conflicts` typed correctly as `[number, number, string][]` (matches the Python tuple contract).
- Optional fields (`risk`, `variance`) are omitted when absent, so they read as `undefined` (not `null`) in TS.
- Swap maps are passed via `json.loads` to avoid JS-literal/Python-token mismatches.
- **npm version reconciled from `1.0.0` to `0.4.0`** — `1.0.0` implied a stability/parity guarantee that did not exist.

---

## Documentation

- New **"Verification trace (auditability)"** section in the README with the evidence-type table and a `trace_to_dict` export example.
- Corrected the `CitationGuard` example to use `format_valid` / `status` / `verified=False`.
- Added `ProvenanceGuard` to the guard coverage table.
- Relabelled `StatuteOfLimitationsGuard` and `ContradictionGuard` as `MIXED`.
- Added `CHANGELOG.md`.

---

## ⚠️ Breaking Changes

### `FairnessGuard.verify_decision_fairness` no longer returns `verified=True`

Fairness cannot be proven by counterfactual text substitution + string equality, so the guard no longer presents one. (Resolves #18.)

| Outcome | Before | After |
|---------|--------|-------|
| Consistent counterfactual | `verified=True`, `FAIRNESS_VERIFIED` | `verified=False`, `status=UNVERIFIABLE_FAIRNESS` |
| Differing outcome | `verified=False`, `JUDICIAL_BIAS_DETECTED` | `verified=False`, `risk=HEURISTIC_BIAS_SIGNAL` |
| Incomplete / malformed input | could pass or raise loosely | fail-closed (`UNVERIFIABLE_FAIRNESS` or `ValueError`) |

**Migration:** treat fairness output as a **signal that requires human review**, not as a verified pass. If your code branched on `result["verified"] == True` or `status == "FAIRNESS_VERIFIED"`, update it to consume `status` / `risk` instead.

---

## Internal

- Reconciled `pyproject.toml` version (`0.3.0` → `0.4.0`) with `qwed_legal.__version__`.

---

## Known follow-ups (tracked separately)

- `publish.yml` publishes to PyPI on release **without a test gate** — a fail-open release path. To be fixed in a follow-up issue (gate publish on CI green).
- `ProvenanceGuard` does not yet emit a `verification_trace` (it was out of the original rollout scope).

---

## Install

```bash
pip install qwed-legal==0.4.0
npm install @qwed-ai/legal@0.4.0
```

Full Changelog: https://github.com/QWED-AI/qwed-legal/compare/v0.2.0...v0.4.0
