---
title: QWED Protocol Verification
date: 2026-08-16 22:10:03 +00:00
tags:
  - QWED-AI
  - GitHub Actions
draft: false
repo: https://github.com/QWED-AI/qwed-verification
marketplace: https://github.com/marketplace/actions/qwed-protocol-verification
version: v7.1.0
dependentsNumber: "0"
actionType: Docker
actionSummary: |
  This GitHub Action automates AI output verification using the QWED protocol and Verification Context v1.0, ensuring deterministic verification before production execution. It provides a standardized way to verify AI outputs, returning diagnostic results indicating whether they are VERIFIED, UNVERIFIABLE, or BLOCKED based on policy and rules. The action emits evidence and proof in a canonical format that can be used for auditing and decision-making.
---


Version updated for **https://github.com/QWED-AI/qwed-verification** to version **v7.1.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/qwed-protocol-verification) to find the latest changes.

## Action Summary

This GitHub Action automates AI output verification using the QWED protocol and Verification Context v1.0, ensuring deterministic verification before production execution. It provides a standardized way to verify AI outputs, returning diagnostic results indicating whether they are VERIFIED, UNVERIFIABLE, or BLOCKED based on policy and rules. The action emits evidence and proof in a canonical format that can be used for auditing and decision-making.

## What's Changed

## v7.1.0 — Verification Context v1.0 Rollout

Additive minor release shipping the **Verification Context (VC) v1.0** — the external, interoperable layer on top of `DiagnosticResult`. Verification methods keep returning `DiagnosticResult`; a schema-validated, canonically-encoded, tamper-evident verification document is produced on demand via the explicit `to_verification_context()` conversion.

> No breaking wire changes — existing wire contracts remain unchanged.

### Ontology & Spec (#301, #302)
- **ADR-001..005 — verification ontology** — object of verification, verification context document, truth-vs-admission separation, formalization boundary, root of trust formally defined
- **Verification Context v1.0 spec freeze** — 4-layer JSON document contract (interpretation / proof / evidence / decision) with RFC 8785 canonical encoding, UTF-16 key ordering, fail-closed schema validation, content-bound `proof_ref`

### Core Model (#308, #309)
- **`VerificationContext` model + JSON schema** — `VerificationContext`, `VerificationContextDocument`, `Verdict`, `Admission`, and nested `Interpretation` / `Proof` / `Evidence` / `Decision` types with fail-closed validation
- **Public `proof_ref` generation / resolution** — `compute_document_proof_ref()` and `resolve_document_proof_ref()` exposed as public API; content-bound SHA-256 hashes over the canonical document

### Bridge & Verifier Mappings (#310, #316)
- **`verification_context_from_diagnostic_result()`** — `DiagnosticResult` → VC document; VERIFIED without attestation demotes to UNVERIFIABLE (fail-closed)
- **`to_verification_context()` on all 13 verifiers** — Math, Logic, Symbolic, SQL, Code, Schema, Fact, Image, Graph, Reasoning, Stats, Consensus, SecureCodeExecutor

### Surface Exposure (#311, #313, #314, #315)
- **SDK / API / CLI exposure** — Verification Context surfaced across API routes, CLI, and SDK
- **Docker action VC outputs** — the containerized GitHub Action emits `verdict`, `admission`, `proof_ref`, and `verification_context`
- **Metadata & README alignment** — repository metadata aligned with the v7.0 architecture
- **SDK re-exports** — all Verification Context v1.0 types re-exported from `qwed_sdk`

### Packages
- `qwed` (PyPI): `7.0.0` → `7.1.0`
- `qwed_sdk` (Python): `7.0.0` → `7.1.0`
- `@qwed-ai/sdk` (NPM): `7.0.0` → `7.1.0`
- `qwed` (crates.io/Rust): `7.0.0` → `7.1.0`
- Docker image: `qwedai/qwed-verification:7.1.0` / `7.1` / `latest`

### Notes
- The **QWED GitHub Action** is versioned independently (`3.2.0`); not published from this repo.
- Kubernetes deployment stays pinned to a previously-published image.
