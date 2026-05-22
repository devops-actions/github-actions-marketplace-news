---
title: QWED Protocol Verification
date: 2026-05-22 06:31:03 +00:00
tags:
  - QWED-AI
  - GitHub Actions
draft: false
repo: https://github.com/QWED-AI/qwed-verification
marketplace: https://github.com/marketplace/actions/qwed-protocol-verification
version: v5.1.1
dependentsNumber: "0"
actionType: Docker
---


Version updated for **https://github.com/QWED-AI/qwed-verification** to version **v5.1.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/qwed-protocol-verification) to find the latest changes.

## Action Summary

The QWED Verification GitHub Action provides a model-agnostic trust boundary for AI systems, ensuring deterministic validation of outputs, processes, and tool interactions from large language models (LLMs) and AI agents. It addresses the problem of AI hallucinations by verifying critical outputs before they enter production, making unverified or erroneous results irrelevant. Key capabilities include compatibility with any LLM, multiple verification engines, and agentic security guards to enhance reliability and security in AI-driven workflows.

## What's Changed

# Trust Boundary Hardening

**Release date:** 2026-05-22  
**Type:** Patch — correctness and fail-closed follow-through  
**PyPI:** `pip install qwed==5.1.1`  
**NPM:** `npm install @qwed-ai/sdk@5.1.1`

---

## What this release is

`v5.1.1` is not a feature release.

It packages the trust-boundary and fail-closed corrections that landed on `main` after `v5.1.0` (April 2026) into a coherent, tagged artifact. The changes are security and correctness-class — not cosmetic.

If you are running `v5.1.0` in a context where QWED provides trust guarantees (cache, attestation, audit, reasoning), upgrading is recommended.

---

## Changes since v5.1.0

### Cache trust-context binding  
**PR #178, #192** · `qwed_sdk/cache.py`, `qwed_sdk/qwed_local.py`

Verification cache keys were previously query-string only. This allowed a cached result from one trust context (provider, model, policy version, session/tenant) to be replayed by a caller operating in a different context.

Cache keys are now bound to the full trust context. A cache miss is forced when any of `provider`, `model`, `policy_version`, or `session_id` change — even if the query string matches.

> **Why this matters:** In a multi-tenant or multi-provider deployment, a verified result from Provider A could previously satisfy a cache lookup for Provider B. This is a replay resistance fix, not a performance change.

---

### Attestation fail-closed hardening  
**PR #188, #194** · `src/qwed_new/core/attestation.py`

The attestation path previously had a silent exception-swallowing path that could return `None` on signing failure, allowing a caller to continue without a valid attestation token.

- `create_verification_attestation()` now returns an explicit `AttestationResult` on all code paths.
- `AttestationResult.status` is now an `AttestationStatus` enum — not a raw string.
- `is_issued` property enforces fail-closed contract at the caller boundary.
- `IssuerKeyPair` gains `generated_at` epoch and `key_continuity_policy` with an allowlist — no silent policy downgrade possible.
- Non-deterministic parameters (`issued_at`, `jti`) are injectable for deterministic testing.

---

### Audit logger fail-closed  
**PR #179** · `src/qwed_new/core/audit.py`

- Malformed audit payloads now fail closed instead of silently passing.
- Organization-level audit chains are now isolated — cross-org contamination is prevented.
- SQLite writes now use explicit `BEGIN IMMEDIATE` transactions — no partial-write audit records.

---

### Proof-path and reasoning corrections  
**PR #177, #180, #161** · reasoning, symbolic, and batch verifiers

- Reasoning acceptance now requires proof prerequisites to be satisfied. Previously, a reasoning step could be accepted without a formal proof existing.
- Batch math simplification is now separated from the proof path — a simplification result no longer satisfies a proof requirement.
- Symbolic verifier returns `BLOCKED` when no proof exists, instead of an ambiguous non-result.

---

### Agent and executor boundary fixes  
**PR #176, #168** · agent service, secure executor

- Unknown agent actions are now explicitly denied and logged — no silent pass-through.
- Secure executor fail-closed follow-up: execution boundary is now hard-blocked on unrecognized input shapes.

---

### Schema validation tightening  
**PR #160** · `src/qwed_new/core/schema_verifier.py`

`additionalProperties: false` enforcement is now strict — schemas that previously allowed unknown fields through now reject them.

---

### CI and release infrastructure  
**PR #193, #196**

- PowerShell test encoding hygiene cleanup.
- Python SDK publish workflow corrected to build from repository root metadata.
- PyPI publish switched to OIDC Trusted Publisher — no hardcoded credential in workflow config.
- `pypa/gh-action-pypi-publish` pinned to immutable commit SHA.

---

## Upgrade notes

- **Cache:** If you use `VerificationCache` directly, `cache.get(query)` now requires a `context` argument. See [#192](https://github.com/QWED-AI/qwed-verification/pull/192) for the updated interface.
- **Attestation:** Callers that checked `if token is None` must migrate to `if not result.is_issued`. Returning `None` is no longer possible.
- **Kubernetes:** Update your image reference from `ghcr.io/qwed-ai/qwed-core` to `docker.io/qwedai/qwed-verification:5.1.1`.
- Everything else is backward compatible.

---

## Version table

| Artifact | v5.1.0 | v5.1.1 |
|---|---|---|
| `qwed` (PyPI) | 5.1.0 | 5.1.1 |
| `qwed_sdk` (Python) | 5.1.0 | 5.1.1 |
| `@qwed-ai/sdk` (NPM) | 5.1.0 | 5.1.1 |
| `qwed` (Rust crate) | 5.1.0 | 5.1.1 |
| API version header | 5.1.0 | 5.1.1 |

---

## Full changelog

See [CHANGELOG.md](https://github.com/QWED-AI/qwed-verification/blob/main/CHANGELOG.md#5110---2026-05-21) for the complete entry including all merged PRs.

---

*Verified by QWED — deterministic security verification. No LLM used in the verification pipeline.*

