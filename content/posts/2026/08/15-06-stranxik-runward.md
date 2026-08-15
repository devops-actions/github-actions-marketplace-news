---
title: runward gate
date: 2026-08-15 06:42:31 +00:00
tags:
  - stranxik
  - GitHub Actions
draft: false
repo: https://github.com/stranxik/runward
marketplace: https://github.com/marketplace/actions/runward-gate
version: v0.35.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  Runward is an open-source delivery methodology for AI-assisted software engineering that verifies the engineering decisions behind AI-written code. It automates the process of ensuring that design decisions are followed and documented, providing a way to verify that the load-bearing decisions were actually made and written down. Runward uses plain code to verify these decisions, eliminating the need to ask an LLM about it.
---


Version updated for **https://github.com/stranxik/runward** to version **v0.35.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/runward-gate) to find the latest changes.

## Action Summary

Runward is an open-source delivery methodology for AI-assisted software engineering that verifies the engineering decisions behind AI-written code. It automates the process of ensuring that design decisions are followed and documented, providing a way to verify that the load-bearing decisions were actually made and written down. Runward uses plain code to verify these decisions, eliminating the need to ask an LLM about it.

## What's Changed

The verdict becomes a portable, re-checkable, standards-legible object — and a full-repo multi-agent audit hardened it before it shipped.

- **`check --attest`** — the verdict as an unsigned in-toto Statement v1 (predicate `https://runward.dev/verdict/v1`), bound to the exact mission state; schema-validated in CI offline against a vendored in-toto schema. Signing stays the operator's gesture — runward holds no key.
- **`runward verify`** — offline re-derivation on the repo alone: drift and tampered predicates fail loud; a cross-version skew is named (`producedBy`/`versionSkew`) so verdict evolution is never mistaken for forgery. Horizon-aware for `check --through --attest` prefix attestations.
- **`runward bundle`** — the delivery artifacts (attestation, seal, OSCAL, SBOM) bound into one in-toto provenance, re-hashable by any cosign/in-toto tool.
- **`runward spec-check`** — deterministic spec conformance: every acceptance criterion linked at the depth it declares (`#SYMBOL`, `::NAME`, `:LINE`), through the gate's own evidence layer. Linkage, never semantic satisfaction.
- **JUnit committed-tool adapter** — homonym-safe: every occurrence scanned, one red reddens; `CLASS::NAME` pins a case. Reads the committed report, never runs the tool.
- **The shared corpus, pinned without a registry** (ADR-0057, accepted) — `update --corpus <path>` (a path, never a registry coordinate), `corpusPin`/`corpusDrift` (advisory), org `migrations.json` merged; the no-fetch invariant proven under network-cut CI.
- **9/64 signed rules · `rules --for --json` fail-loud `couldNotRead` · the ADR-0054 runtime boundary as a test (accepted) · `npm run bench` (the gate is O(cited evidence), not O(repo)) · corrected assessor-facing registers · `runward/claims` export · honest README tiering.**

Migration note in [CHANGELOG.md](https://github.com/stranxik/runward/blob/main/CHANGELOG.md): two false greens die on purpose (JUnit homonyms; spec-check declared depth), three rules gain a signature.
