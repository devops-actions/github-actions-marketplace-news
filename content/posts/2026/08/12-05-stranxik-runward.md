---
title: runward gate
date: 2026-08-12 05:47:01 +00:00
tags:
  - stranxik
  - GitHub Actions
draft: false
repo: https://github.com/stranxik/runward
marketplace: https://github.com/marketplace/actions/runward-gate
version: v0.33.5
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  Runward automates the verification of engineering decisions behind AI-generated code, ensuring that critical aspects of software delivery are adhered to. It provides a deterministic gate to check that the process was followed, making it easier to verify compliance with standards like ISO 42001 and NIST AI RMF.
---


Version updated for **https://github.com/stranxik/runward** to version **v0.33.5**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/runward-gate) to find the latest changes.

## Action Summary

Runward automates the verification of engineering decisions behind AI-generated code, ensuring that critical aspects of software delivery are adhered to. It provides a deterministic gate to check that the process was followed, making it easier to verify compliance with standards like ISO 42001 and NIST AI RMF.

## What's Changed

**No verdict changes. The canary for [ADR-0049](https://github.com/stranxik/runward/blob/main/docs/adr/ADR-0049-the-build-is-isolated-from-the-publish.md): the first release whose provenance is signed by the isolated builder.**

The tarball is built, tested and its provenance signed inside `build-and-attest.yml`, a reusable workflow whose steps `release.yml` cannot reach into; the signing certificate names that file. The publish job packs the same commit itself and **refuses to publish** a builder tarball that does not byte-match. `npm publish` stays under OIDC trusted publishing, unchanged.

What this release must establish, written before the tag:

```sh
gh attestation verify runward-0.33.5.tgz --repo stranxik/runward \
  --signer-workflow stranxik/runward/.github/workflows/build-and-attest.yml
```

passing on the published artifact; the determinism cross-check holding; a local rebuild of the attested commit reconciling byte for byte. `verify-release.yml` requires the signer identity on this run — the outcome is loud in both directions.

No SLSA level is asserted anywhere. Verification procedure: [docs/verifying-a-release.md](https://github.com/stranxik/runward/blob/main/docs/verifying-a-release.md).

**Full changelog**: https://github.com/stranxik/runward/blob/main/CHANGELOG.md

