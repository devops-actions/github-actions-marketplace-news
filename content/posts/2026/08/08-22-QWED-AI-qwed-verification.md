---
title: QWED Protocol Verification
date: 2026-08-08 22:07:35 +00:00
tags:
  - QWED-AI
  - GitHub Actions
draft: false
repo: https://github.com/QWED-AI/qwed-verification
marketplace: https://github.com/marketplace/actions/qwed-protocol-verification
version: v7.0.0
dependentsNumber: "0"
actionType: Docker
actionSummary: |
  **Purpose and Functionality**: QWED is a production-grade AI verification engine that provides deterministic trust boundaries for any LLM. It automates the detection and prevention of AI hallucinations, ensuring the integrity and reliability of AI outputs and processes.
  
  **Problem it Solves**: The main issue addressed by QWED is the inherent uncertainty and potential biases in AI systems due to their complex and dynamic nature. By using multiple verification engines and agent security guards, QWED ensures that AI outputs are not only accurate but also transparent and verifiable, reducing the risk of AI-generated misinformation or harmful actions.
  
  **Key Capabilities**: QWED offers various features including model-agnostic support for a wide range of LLMs, budget-friendly pricing options, and integration with Docker containers. It provides detailed reports on verification outcomes, allowing developers to understand how their AI systems perform in terms of accuracy and trustworthiness.
---


Version updated for **https://github.com/QWED-AI/qwed-verification** to version **v7.0.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/qwed-protocol-verification) to find the latest changes.

## Action Summary

**Purpose and Functionality**: QWED is a production-grade AI verification engine that provides deterministic trust boundaries for any LLM. It automates the detection and prevention of AI hallucinations, ensuring the integrity and reliability of AI outputs and processes.

**Problem it Solves**: The main issue addressed by QWED is the inherent uncertainty and potential biases in AI systems due to their complex and dynamic nature. By using multiple verification engines and agent security guards, QWED ensures that AI outputs are not only accurate but also transparent and verifiable, reducing the risk of AI-generated misinformation or harmful actions.

**Key Capabilities**: QWED offers various features including model-agnostic support for a wide range of LLMs, budget-friendly pricing options, and integration with Docker containers. It provides detailed reports on verification outcomes, allowing developers to understand how their AI systems perform in terms of accuracy and trustworthiness.

## What's Changed

# QWED v7.0.0

v7.0.0 completes META #216: every one of QWED's 13 verification engines now speaks the same contract — the unified 3-layer DiagnosticResult (status / agent_message / developer_fields / proof_ref). This is the release where QWED's definition of verification stops being a promise kept by discipline and becomes a guarantee enforced by construction, in every engine.

---

## From fixing verification to defining it

Earlier releases asked: *"Where is verification wrong?"* — hunting fail-open bugs where an engine could say VERIFIED without a proof. That was necessary, but it treated verification as something to patch.

The architecture has since matured, and the question changed. It is no longer *"how do we fix verification?"* but *"what IS verification, and how must it be done?"* v7.0.0 is the answer, applied universally:

**Verification is a deterministic proof, bound to evidence — or it is nothing.**

With all 13 engines on one contract, that definition is no longer enforced engine-by-engine. It is structural. You cannot construct a VERIFIED result without a proof_ref, in any engine, by construction.

## What verification means to us (and now, in code)

v7.0.0 codifies what does — and does not — count as verification:

- **Execution is not verification.** Code that runs cleanly and returns a number proves only that it ran. Stats execution success is `UNVERIFIABLE`, never `VERIFIED`.
- **Agreement is not verification.** Consensus and cross-engine votes are advisory; they never produce `VERIFIED`.
- **Confidence is not verification.** A high heuristic/LLM/VLM score is carried as `advisory_checks`, never promoted to a status.
- **A proof is verification.** `VERIFIED` requires a non-empty `proof_ref` — a deterministic hash binding the verdict to the exact evidence that justified it.
- **UNVERIFIABLE is an honest answer.** "We could not prove this" is a first-class, fail-closed result — not a failure state.

> If it can't be proven, it doesn't ship. That invariant is now enforced in all 13 engines, not just asserted.

---

## What's new

### All 13 engines conform to DiagnosticResult

Schema, SQL, Code, SecureCodeExecutor, and Stats join the previously-migrated Math, Logic, Symbolic, Fact, Image, Graph, Reasoning, and Consensus engines on the 3-layer contract. No engine returns an ad-hoc dict anymore.

### Truth is separated from admission

`POST /verify/code` reports proven-unsafe code as **VERIFIED-as-unsafe** (`is_valid = false`, bound `proof_ref`) — a *truth* guarantee ("we checked it and it's unsafe") — while a separate `admission = BLOCKED` decision gates execution. Authority-only consumers can no longer admit unsafe code by reading `status == "VERIFIED"`.

### Fail-closed batch verification

Fact / image / SQL / code batches are authoritative only when **every** item is proven. Any refuted or blocked item fails the whole batch closed; batch `proof_ref` binds full claim digests plus the shared input (image/context).

### Evidence is preserved, never fabricated

Stats retain the observed result, generated code, columns, and a deterministic dataset fingerprint on UNVERIFIABLE. Deferred capabilities (deterministic claim evaluation, schema validation) are tracked as #298 / #299 — filed, not faked.

---

## ⚠️ Breaking changes

- **`POST /verify/code`** now returns HTTP 200 with `status = "VERIFIED"` for proven-unsafe code (previously `status = "BLOCKED"`). Admission is driven by the new `admission` field and `developer_fields.is_valid`. Consumers branching on `status` for safety gating **must** switch to `admission` / `is_valid`.
- **`POST /verify/stats`** reports execution success as `status = "UNVERIFIABLE"` (previously `VERIFIED`), with the observed value at `developer_fields.observed_result`. Execution success alone is never presented as a proven claim.

---

## Version propagation (6.0.0 → 7.0.0)

- `qwed` (PyPI) · `qwed_sdk` (Python) · `@qwed-ai/sdk` (npm) · `qwed` (crates.io)
- API version marker
- Kubernetes deployment image: pinned to the published `6.0.0` until the release publishes the `7.0.0` image, then bumped (avoids ImagePullBackOff)

## Included PRs (merged after v6.0.0)

- #294 SchemaVerifier → DiagnosticResult (#255)
- #295 SQLVerifier → DiagnosticResult (#253)
- #296 CodeVerifier + SecureCodeExecutor → DiagnosticResult (#254)
- #297 StatsVerifier → DiagnosticResult (#256) + fact/image batch

## GitHub Action

The QWED Verification GitHub Action lives in [[QWED-AI/qwed-verification-action](https://github.com/QWED-AI/qwed-verification-action)](https://github.com/QWED-AI/qwed-verification-action). It wraps the `qwedai/qwed-verification` Docker image, is versioned independently, and is not published from this repository — no action release is part of v7.0.0.

---

*The QWED Protocol: if it can't be verified, it doesn't ship.*
