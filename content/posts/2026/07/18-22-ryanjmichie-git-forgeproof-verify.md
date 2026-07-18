---
title: ForgeProof Verify
date: 2026-07-18 22:26:30 +00:00
tags:
  - ryanjmichie-git
  - GitHub Actions
draft: false
repo: https://github.com/ryanjmichie-git/forgeproof-verify
marketplace: https://github.com/marketplace/actions/forgeproof-verify
version: v1.0.2
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action, `forgeproof-verify`, automates the verification of [ForgeProof](https://github.com/ryanjmichie-git/forgeproof-plugin) `.rpack` provenance bundles on pull requests. It ensures that the bundles are tamper-proof and integrates with CI to ensure complete integrity and completeness of sealed provenance chains and artifacts within the checkout. The action posts a human-readable audit report as a PR comment and writes it to the job summary, helping to maintain the veracity of AI-generated code in open-source projects.
---


Version updated for **https://github.com/ryanjmichie-git/forgeproof-verify** to version **v1.0.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/forgeproof-verify) to find the latest changes.

## Action Summary

This GitHub Action, `forgeproof-verify`, automates the verification of [ForgeProof](https://github.com/ryanjmichie-git/forgeproof-plugin) `.rpack` provenance bundles on pull requests. It ensures that the bundles are tamper-proof and integrates with CI to ensure complete integrity and completeness of sealed provenance chains and artifacts within the checkout. The action posts a human-readable audit report as a PR comment and writes it to the job summary, helping to maintain the veracity of AI-generated code in open-source projects.

## What's Changed

Re-vendors the ForgeProof engine to plugin **v1.2.2**. Closes a signature
malleability gap: a whitespace-only trailer (newline/space/tab) appended to a
valid signature previously verified green (`ssh-keygen -Y verify` ignores
trailing bytes, and the canonical check `strip()`'d before validating). The
vendored verifier now turns any such change red.

- New `signature-whitespace` tamper-matrix case (green on the old engine, red now).
- Also carries v1.2.2's clean-error hardening (non-string digest, deeply nested JSON).

The floating `v1` tag now points here, so `uses: ryanjmichie-git/forgeproof-verify@v1` picks up the fix automatically.
