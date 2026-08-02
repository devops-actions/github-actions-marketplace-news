---
title: QWED Protocol Verification
date: 2026-08-02 06:19:59 +00:00
tags:
  - QWED-AI
  - GitHub Actions
draft: false
repo: https://github.com/QWED-AI/qwed-verification
marketplace: https://github.com/marketplace/actions/qwed-protocol-verification
version: v6.0.0
dependentsNumber: "0"
actionType: Docker
actionSummary: |
  QWED Verification is a production-grade, model-agnostic trust boundary designed to detect and prevent AI hallucinations. It works with any LLM through local models or Docker images, ensuring deterministic verification before output enters production.
---


Version updated for **https://github.com/QWED-AI/qwed-verification** to version **v6.0.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/qwed-protocol-verification) to find the latest changes.

## Action Summary

QWED Verification is a production-grade, model-agnostic trust boundary designed to detect and prevent AI hallucinations. It works with any LLM through local models or Docker images, ensuring deterministic verification before output enters production.

## What's Changed

## v6.0.0 — Trust Boundary Completion

Completes the **Trust Boundary Completion epic (#263)** — all 12/12 sub-issues closed. Every verification API pathway now returns `DiagnosticResult` and routes through `enforce_trust_decision`. The trust boundary is no longer advisory: the control plane requires and verifies attestation before admitting VERIFIED results, and VERIFIED is a protocol guarantee backed by a non-empty, deterministic `proof_ref` — never by execution, agreement, confidence, or provenance.

> **⚠️ Breaking change:** `/verify/*` API responses now use the unified `DiagnosticResult` schema (status / `agent_message` / `developer_fields` / `proof_ref`). Consumers of the previous ad-hoc dict responses must migrate.

### Architecture: Observation vs Admission

- **All `/verify/*` endpoints return `DiagnosticResult`** — unified 3-layer response contract across every verification surface (#276)
- **Mandatory attestation in the control plane** — `require_attestation=True`, attestation issued and verified at the admission boundary; enforced status drives the HTTP response status (#278)
- **Batch math** routes through `DiagnosticResult` + attestation + `enforce_trust_decision` (#282)
- **Attestation scope alignment** — attest the translated expression, not the natural-language query, so `query_hash` binds to what was actually verified (#285)
- **Architecture contract codified** — API = observation surface (honest witness), Control Plane = admission authority (judge); QWED_RULES #13-15

### VERIFIED is a protocol guarantee

- **ConsensusResult** uses `DiagnosticStatus` enum with `proof_ref` + `verified_evidence` (#280)
- **FactVerifier** heuristic SUPPORTED verdict → UNVERIFIABLE with `advisory_checks` (#283)
- **Consensus code execution** advisory-only, VERIFIED → UNVERIFIABLE (#281)
- **Consensus stats computation** advisory-only, never VERIFIED (#277)
- **LogicVerifier** migrated to `DiagnosticResult` (#262)
- **AgentStateGuard** `proof_ref` = real sha256 of committed bytes, not a static sentence (#284)

### Engineering & Security Hardening

- **TOCTOU closure** in `enforce_trust_decision` — `developer_fields` snapshotted via recursive rebuild (no deepcopy alias window), fail-closed snapshot (#273, #290)
- **Attestation signature verified before claim decode** — silent generic error for all failure modes (#275, #287)
- **Tenant-isolated verification cache** — `VerificationCache` keys namespaced by normalized `tenant_id` (#274, #286)
- **Unicode normalization** in AgentStateGuard canonicalization — NFC collisions rejected (#272, #288)
- **Mandatory proof artifact** for VERIFIED attestations (issuance + consumption, #248)
- **Credential / JWT / dockerignore security alerts** resolved (#249)
- **Math whitelist injection bypass** removed (#251)
- **Engine classification docs** — Proof / Policy Enforcement / Advisory (#247)

### Rules & Protocol Semantics

- `QWED_RULES.md` codifies the trust-boundary contract: **#13 Separation of Responsibilities**, **#14 Verification Semantics** (non-empty `proof_ref` bound to deterministic evidence), **#15 Truth Before Policy** (admission is a separate decision; original result + evidence unchanged). Rules #7/#8 updated for admission-boundary and deterministic-proof semantics.

### Version Propagation

- `qwed` (PyPI): `5.3.0` -> `6.0.0`
- `qwed_sdk` (Python): `5.3.0` -> `6.0.0`
- `@qwed-ai/sdk` (NPM): `5.3.0` -> `6.0.0`
- `qwed` (crates.io/Rust): `5.3.0` -> `6.0.0`
- API version marker: `5.3.0` -> `6.0.0`
- Docker images: `5.3.0` -> `6.0.0`

### Ecosystem Status

- **Trust boundary complete** — 12/12 sub-issues closed (Epic #263)
- **API surfaces conformant** — remaining engine-internal migrations tracked under META #216
- **Full test suite:** 1655 passed, 102 skipped

### Included PRs

- #247 docs: engine classification — Proof / Policy Enforcement / Advisory
- #248 fix: enforce mandatory proof artifact on VERIFIED attestations
- #249 fix: resolve credential / JWT / dockerignore security alerts
- #251 fix: remove math whitelist injection bypass
- #260 fix: hybrid engine advisory-only — never VERIFIED without proof
- #261 fix: FactVerifier advisory-only
- #262 feat: LogicVerifier migrated to DiagnosticResult
- #276 fix: migrate all /verify/* endpoints to return DiagnosticResult
- #277 fix: consensus stats advisory-only, never VERIFIED
- #278 fix: control plane trust enforcement mandatory
- #280 fix: ConsensusResult DiagnosticStatus enum + proof_ref + verified_evidence
- #281 fix: consensus code execution advisory-only
- #282 fix: batch math DiagnosticResult + attestation + enforce_trust_decision
- #283 fix: FactVerifier SUPPORTED → UNVERIFIABLE with advisory_checks
- #284 fix: AgentStateGuard proof_ref real sha256
- #285 fix: attest translated expression, not natural language query
- #286 fix: VerificationCache tenant isolation
- #287 fix: attestation verify-before-decode + silent generic error
- #288 fix: NFC-normalize AgentStateGuard canonicalization
- #289 fix: mock network in secret redaction tests (CI)
- #290 fix: close TOCTOU in enforce_trust_decision
- #291 release: v6.0.0-pre — version bumps, README reframe, CHANGELOG, rules

### Changelog

https://github.com/QWED-AI/qwed-verification/blob/main/CHANGELOG.md#600---2026-08-02
