---
title: GraphSmith Verify
date: 2026-07-25 06:40:38 +00:00
tags:
  - SathiaAI
  - GitHub Actions
draft: false
repo: https://github.com/SathiaAI/graphsmith
marketplace: https://github.com/marketplace/actions/graphsmith-verify
version: v0.4.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This GitHub Action ensures that AI workflows are tested to survive failure before deployment, reducing reliability issues like amnesia, duplication, and hallucination. It provides a robust mechanism for executing agent workflows and ensuring their stability by replaying previous checkpoints in case of failures.
---


Version updated for **https://github.com/SathiaAI/graphsmith** to version **v0.4.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/graphsmith-verify) to find the latest changes.

## Action Summary

This GitHub Action ensures that AI workflows are tested to survive failure before deployment, reducing reliability issues like amnesia, duplication, and hallucination. It provides a robust mechanism for executing agent workflows and ensuring their stability by replaying previous checkpoints in case of failures.

## What's Changed

**Extended-control hardening.** v0.4.0 turns the deferred review gaps into enforced, recomputed controls, and teaches the GSA verifier to check them: every run-time claim a bundle makes is recomputed from its own evidence and **fails closed on any lie** (D5). Evidence, **not** certification.

## What's new
- **Capability conformance (R1)** — per-skill fs / model / subprocess / network grants; requested ⊆ granted; attested only when enforced (D1).
- **Side-effect receipts (R2)** — external effects reconcile against adapter receipts; an evidence-less "success" is never vouched for.
- **Signer lifecycle + recall (R3)** — revoked signers and recalled bundles fail closed; a rotated key resolves only to a live successor.
- **Secret / PII redaction (R4)** — an exported trace carrying an unredacted secret or PII fails closed, against a 17-format recall gate.
- **SBOM + build provenance (R5)** — SBOM digest + provenance recomputed against actual artifact hashes; this release publishes to npm **with build provenance**.
- **Policy-as-code (R8)** — versioned enterprise-safe profiles; a required control counts only when enforced.
- **GSA §9.11** — the verifier recomputes all five run-time controls from a bundle's own evidence; a v0.3.0 bundle verifies unchanged.
- **`graphsmith verify` CLI** — a fail-closed verifier bin from the `graphsmith-skill` package for CI / enterprise.
- **Independent Assurance program** — `docs/ASSURANCE.md`.

## Assurance
Every control built by one model family and adversarially reviewed by **≥2 non-Anthropic families** (Mistral, DeepSeek, Qwen); the orchestrator re-ran every suite and audited zero-finding results for rubber-stamping. Real defects found + fixed include a **leaky R4 redaction battery** (missed AWS/JWT/Google/Stripe keys, tokens, phone PII) and two regex-brittleness bugs; a tester's **inverted harness that scored missed leaks as passes** was caught and rejected. Closed by the **v0.4.0 gauntlet: 395 scenarios, all HOLD, 0 BREAK** (v0.3.0 gauntlet still green at 286); GSA conformance **14/14**.

Full notes: [`docs/releases/v0.4.0.md`](https://github.com/SathiaAI/graphsmith/blob/main/docs/releases/v0.4.0.md). Reviewed, not certified — this attests tested behavior, not fitness for any purpose.
