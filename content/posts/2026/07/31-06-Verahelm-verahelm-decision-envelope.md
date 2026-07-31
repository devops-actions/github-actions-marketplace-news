---
title: Verahelm Decision Envelope verifier
date: 2026-07-31 06:28:49 +00:00
tags:
  - Verahelm
  - GitHub Actions
draft: false
repo: https://github.com/Verahelm/verahelm-decision-envelope
marketplace: https://github.com/marketplace/actions/verahelm-decision-envelope-verifier
version: v0.10.3
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action, Verahelm Decision Envelope, verifies signed authorization records against exact pull requests or agent changes under review to ensure they are valid. It solves the problem of ensuring that an authorization does not authorize another and helps automate the verification process. The action uses a pinned Ed25519 public key or offline multi-key bundle with issuer, key-identifier, and validity-window constraints for trust configuration.
---


Version updated for **https://github.com/Verahelm/verahelm-decision-envelope** to version **v0.10.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/verahelm-decision-envelope-verifier) to find the latest changes.

## Action Summary

This GitHub Action, Verahelm Decision Envelope, verifies signed authorization records against exact pull requests or agent changes under review to ensure they are valid. It solves the problem of ensuring that an authorization does not authorize another and helps automate the verification process. The action uses a pinned Ed25519 public key or offline multi-key bundle with issuer, key-identifier, and validity-window constraints for trust configuration.

## What's Changed

# Verahelm Decision Envelope v0.10.3

This maintenance release corrects the version metadata embedded in downloadable
source archives. Verifier, schema, Action, fixture, trust, and public envelope
behavior are unchanged.

Included:

- offline schema, signature, lifecycle, and context-binding verification;
- a verification-only GitHub Action;
- fictional conformance fixtures;
- a local CLI and digest-only adapter;
- a five-minute fictional demonstration;
- bounded `status` and string-boolean `valid` Action outputs;
- a dependency-free CLI package with no lifecycle scripts.
- tested digest-only mappings for Promptfoo, OPA, SARIF, Sigstore references,
  and SLSA provenance references;
- a documented DSSE and in-toto semantic mapping;
- a local, opt-in, aggregate-only measurement tool;
- in-memory negative controls for the default-deny release boundary;
- deterministic parser and canonicalization property tests;
- pinned CodeQL analysis and automated workflow dependency review;
- a bounded design-partner pilot and enterprise review sheet;
- a concrete technical repository preview;
- an Apache-2.0 path for compatible public verifier implementations.
- a digest-pinned multi-key trust bundle with exact issuer/key selection and
  validity-window enforcement;
- pinned dependency review and local-only OpenSSF Scorecard analysis;
- a standard Apache-2.0 repository license with explicit private-engine,
  confidential-material, and trademark boundaries in `NOTICE`.

The release does not contain Verahelm's hosted decision engine, private methods,
customer material, or real engine output. Verification authenticates the
published envelope and its declared bindings; it does not establish that the
underlying evidence is true or sufficient.

## Verify

```bash
gh release download v0.10.3 --repo Verahelm/verahelm-decision-envelope
sha256sum --check SHA256SUMS
gh attestation verify verahelm-decision-envelope-0.10.3.tar.gz --repo Verahelm/verahelm-decision-envelope
gh attestation verify verahelm-decision-envelope-0.10.3.tgz --repo Verahelm/verahelm-decision-envelope
```

`SOURCE_COMMIT` identifies the exact source revision. The immutable GitHub
release attestation binds the tag, source commit, and attached assets. The
additional build attestation records the release workflow that produced them.

