---
title: ForgeProof Verify
date: 2026-08-22 06:13:49 +00:00
tags:
  - ryanjmichie-git
  - GitHub Actions
draft: false
repo: https://github.com/ryanjmichie-git/forgeproof-verify
marketplace: https://github.com/marketplace/actions/forgeproof-verify
version: v1.1.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  GitHub Action to verify ForgeProof `.rpack` provenance bundles on pull requests, ensuring AI-generated code integrity and completeness. It checks bundle signatures, provenance chains, artifact SHA-256s, and posts a human-readable audit report as a PR comment.
---


Version updated for **https://github.com/ryanjmichie-git/forgeproof-verify** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/forgeproof-verify) to find the latest changes.

## Action Summary

GitHub Action to verify ForgeProof `.rpack` provenance bundles on pull requests, ensuring AI-generated code integrity and completeness. It checks bundle signatures, provenance chains, artifact SHA-256s, and posts a human-readable audit report as a PR comment.

## What's Changed

Re-vendors the ForgeProof engine to plugin **v1.3.0** (bundle format
v1.1.0). Bundles produced by plugin v1.3.0+ embed a standards-conformant
attestation — in-toto Statement v1 with a SLSA Provenance v1 predicate,
DSSE-signed with the bundle's own ephemeral Ed25519 key, packaged as a
Sigstore v0.3 bundle — and this action now verifies it as part of bundle
verification.

- New additive `attestation` output: `"true"` iff every matched bundle
  embeds an attestation. Presence only — validity is part of `verified`
  (the DSSE signature is checked against the bundle's own public key, and
  the attestation subjects are cross-checked against the sealed artifact
  digests). `"false"` with zero matched bundles — never vacuously
  `"true"`.
- Pre-v1.3 bundles verify exactly as before: green, no warning,
  `attestation: "false"` — proven in CI by the frozen v101/v110/v122
  fixtures on the new engine.
- New frozen fixtures (v122, v130) and an `attestation-field-edit`
  tamper-matrix case: one flipped byte inside the embedded attestation
  turns the check red.
- The same attestation is verifiable *outside* this action with plain
  cosign from the sidecars the plugin seals next to the bundle (see the
  plugin's `docs/cosign-interop.md`). This action deliberately stays
  stdlib-only.

The floating `v1` tag now points here, so
`uses: ryanjmichie-git/forgeproof-verify@v1` picks up attestation
verification automatically.

