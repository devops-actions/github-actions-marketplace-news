---
title: ForgeProof Verify
date: 2026-07-18 06:48:57 +00:00
tags:
  - ryanjmichie-git
  - GitHub Actions
draft: false
repo: https://github.com/ryanjmichie-git/forgeproof-verify
marketplace: https://github.com/marketplace/actions/forgeproof-verify
version: v1.0.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action automates the verification of ForgeProof `.rpack` bundles in pull requests. It checks that the bundle's root digest, signature, provenance chain, and all recorded artifacts are intact, ensuring AI-generated code remains secure. The action posts a human-readable audit report as a PR comment if enabled, and fails the check on tampering or missing evidence.
---


Version updated for **https://github.com/ryanjmichie-git/forgeproof-verify** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/forgeproof-verify) to find the latest changes.

## Action Summary

This GitHub Action automates the verification of ForgeProof `.rpack` bundles in pull requests. It checks that the bundle's root digest, signature, provenance chain, and all recorded artifacts are intact, ensuring AI-generated code remains secure. The action posts a human-readable audit report as a PR comment if enabled, and fails the check on tampering or missing evidence.

## What's Changed

Re-vendors the ForgeProof engine to plugin **v1.2.1**, which closes an unsigned-bundle forgery: stripping a bundle's signature and resealing the keyless public `root_digest` previously verified green, so a tampered PR could pass this Action's check. The vendored verifier now rejects any bundle without a valid signature.

- `verifier/forgeproof.py` → plugin v1.2.1 (sha256 `008470c3…`); `verifier/UPSTREAM` re-pinned to `ref=v1.2.1`. `sync-check` green.
- New `signature-removed` tamper-matrix case (strip signature + reseal digest → red). Green on the old engine, red now — guards the fix.

The floating `v1` tag now points here, so `uses: ryanjmichie-git/forgeproof-verify@v1` picks up the fix automatically.
