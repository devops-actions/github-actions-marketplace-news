---
title: QWED Protocol Verification
date: 2026-06-19 15:06:30 +00:00
tags:
  - QWED-AI
  - GitHub Actions
draft: false
repo: https://github.com/QWED-AI/qwed-verification
marketplace: https://github.com/marketplace/actions/qwed-protocol-verification
version: v5.2.0
dependentsNumber: "0"
actionType: Docker
---


Version updated for **https://github.com/QWED-AI/qwed-verification** to version **v5.2.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/qwed-protocol-verification) to find the latest changes.

## What's Changed

## What's in this release

v5.2.0 introduces the **Structured Verification Diagnostics** architecture — a unified `DiagnosticResult` model that establishes a 3-layer diagnostic contract across all QWED verification engines.

This is an **architectural completion** release, not a feature release. No existing engine return types are changed. This release establishes the contract that all engines will conform to in subsequent patches.

---

## Why this release exists

Before v5.2.0, every QWED verification engine returned its own ad-hoc `Dict[str, Any]` with no consistency. Three incompatible `VerificationResult` dataclasses existed in different modules. Some engines returned `(bool, str)` tuples with no structure at all. A future diagnostic aggregation layer would need N different adapters for N engines.

More critically, **verification diagnostics were not separable by audience**. Agents saw internal detection patterns. Developers couldn't reliably find `expected` vs `actual` values. Auditors had no proof artifact references — engines computed mathematical proofs (Z3 assertion stacks, Newton-Raphson convergence traces, eigenvalue comparisons) and then **discarded them**.

v5.2.0 fixes this by establishing a single `DiagnosticResult` type with three disclosure layers, each targeted at a specific audience.

---

## The 3-Layer Diagnostic Model

### Layer 1 — Agent-Safe Diagnostics

**Field:** `agent_message: str`

Agent/model-facing summary. Allows agents to correct failures without exposing verification internals. Never contains detection logic, rule IDs, regex patterns, or security bypass guidance.

Example: `"Claim could not be deterministically verified"`

### Layer 2 — Developer Diagnostics

**Field:** `developer_fields: dict`

Application-developer-facing structured evidence. Includes `constraint_id`, `expected`/`actual` values, `advisory_checks`, `methods_used`, and engine-specific evidence. Structured, not free-form strings.

Example:
```python
{
    "constraint_id": "math_verifier.irr_non_convergent",
    "iterations": 100,
    "final_npv": "0.7",
    "converged": False,
    "advisory_checks": [
        {"name": "llm_fallback", "advisory_only": True, "details": {"llm_verdict": "SUPPORTED"}}
    ],
}
```

### Layer 3 — Proof Diagnostics

**Field:** `proof_ref: Optional[str]`

Cryptographic hash (`sha256:...`) of retained proof artifact. Present only when `status == VERIFIED` and proof was established. `None` for `UNVERIFIABLE` / `BLOCKED`.

This is the **authority bit**: downstream gates use a mechanical rule — `proof_ref is not None` = admissible for control flow, `proof_ref is None` = reject. No separate `authoritative` boolean needed.

---

## Key Design Decisions

### Tri-state status — no proliferation
`DiagnosticStatus` has exactly 3 values: `VERIFIED`, `UNVERIFIABLE`, `BLOCKED`. No `HEURISTIC`, `AMBIGUOUS`, or `CORRECTION_NEEDED`. Richer distinctions live in `developer_fields.constraint_id`.

### `proof_ref` is the authority bit
Resolves the design debate from #190 (Keesan's `authoritative` flag vs Rahul's status taxonomy). Both are the same thing: `proof_ref is not None` IS the authority bit AND the status taxonomy enforcer. No new semantic layer needed.

### VERIFIED requires proof — structurally enforced
`__post_init__` raises `ValueError` if `status == VERIFIED` and `proof_ref is None` (or empty string). "VERIFIED without proof" is impossible to construct — not a caller convention, a type-level invariant.

### Frozen dataclasses
Both `DiagnosticResult` and `AdvisoryCheck` are `frozen=True`. Post-construction mutation of `proof_ref` or `status` is blocked — prevents bypassing the authority contract without explicit `object.__setattr__`.

### Advisory checks never influence verdicts
`AdvisoryCheck` (LLM fallback, NLI entailment, VLM interpretation) populates `developer_fields.advisory_checks` with `advisory_only=True` enforced via `__post_init__`. They never set `status` or `proof_ref`. This structurally enforces the constraint: *"diagnostics must never originate from model reasoning, confidence, or self-assessment."*

### Migration helper for existing engines
`from_legacy_dict()` converts ad-hoc engine dicts to `DiagnosticResult` for fail-closed states. It **raises** for legacy `VERIFIED` results — proof artifacts were discarded by pre-v5.2.0 engines, so backfilling is impossible. Callers must use `DiagnosticResult.verified()` with explicit evidence.

---

## What this release does NOT include

- ❌ No existing engine return types are changed (additive only)
- ❌ No explainability features (diagnostics ≠ explainability)
- ❌ No confidence scores in verdict-deciding position (forbidden by design)
- ❌ No API/SDK response shape changes
- ❌ No new verification engines

Engine conformance (migrating ad-hoc `Dict[str, Any]` returns to `DiagnosticResult`) is tracked in 10 blocked issues.

---

## Blocked issues — next steps

These issues are unblocked by this release and will conform to the `DiagnosticResult` contract in subsequent patches:

| Issue | Engine | Diagnostic layer focus |
|-------|--------|----------------------|
| [#129](https://github.com/QWED-AI/qwed-verification/issues/129) | MathVerifier (mode ambiguity) | Layer 2 + 3 |
| [#130](https://github.com/QWED-AI/qwed-verification/issues/130) | MathVerifier (eigenvalues) | Layer 2 + 3 |
| [#131](https://github.com/QWED-AI/qwed-verification/issues/131) | MathVerifier (IRR convergence) | Layer 3 |
| [#133](https://github.com/QWED-AI/qwed-verification/issues/133) | FactVerifier (LLM fallback) | Layer 1 + 2 + 3 |
| [#134](https://github.com/QWED-AI/qwed-verification/issues/134) | ImageVerifier (VLM fallback) | Layer 1 + 3 |
| [#162](https://github.com/QWED-AI/qwed-verification/issues/162) | LogicVerifier (symbol inference) | Layer 2 + 3 |
| [#163](https://github.com/QWED-AI/qwed-verification/issues/163) | GraphFactVerifier (NLI fallback) | Layer 2 + 3 |
| [#164](https://github.com/QWED-AI/qwed-verification/issues/164) | ReasoningVerifier (no proof path) | Layer 3 |
| [#190](https://github.com/QWED-AI/qwed-verification/issues/190) | FactVerifier (provider drift) | Layer 3 |
| [#205](https://github.com/QWED-AI/qwed-verification/issues/205) | SecureCodeExecutor (tech-debt) | Layer 1 + 2 |

---

## Version Propagation

| Artifact | Old | New |
|----------|-----|-----|
| `qwed` (PyPI) | 5.1.2 | 5.2.0 |
| `qwed_sdk` (Python) | 5.1.1 | 5.2.0 |
| `@qwed-ai/sdk` (NPM) | 5.1.2 | 5.2.0 |
| `qwed` (crates.io/Rust) | 5.1.2 | 5.2.0 |
| API version marker | 5.1.2 | 5.2.0 |
| K8s deployment image | 5.1.2 | 5.2.0 |

---

## Quality

- 83 new tests covering: status taxonomy, all 3 layers, authority contract, fail-closed enforcement, advisory checks, proof hashing determinism, serialization round-trip, legacy migration, frozen dataclass immutability, and realistic scenarios drawn from the 10 blocked issues
- 7 rounds of automated review (Sentry, Greptile, CodeRabbit, CodeQL) — all issues addressed
- Boundary check: passed
- Lint (ruff): clean
- No regressions in existing test suite

---

## Included PRs

- [#206](https://github.com/QWED-AI/qwed-verification/pull/206) — feat(diagnostics): unified 3-layer DiagnosticResult model (#204)
- [#207](https://github.com/QWED-AI/qwed-verification/pull/207) — release: v5.2.0 version propagation

---

## Constraints (non-negotiable)

1. Diagnostics are NOT explainability — no confidence scores, no chain-of-thought, no model reasoning
2. All diagnostic fields must originate from verification results, constraints, rule evaluation, schema validation, or proof systems
3. Agent-safe diagnostics must never expose detection logic, rule IDs, regex patterns, or security bypass guidance
4. Existing fail-closed behavior must not be weakened

---

## Compatibility

**Additive release.** No breaking changes. Existing `VerificationResult` dataclasses and ad-hoc engine dicts continue to work. `DiagnosticResult` is opt-in — engines migrate incrementally via `from_legacy_dict()` or direct construction.

**Minimum Python:** 3.10 (unchanged)
**Tested on:** Python 3.11.9, Windows
