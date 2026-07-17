---
title: ForgeProof Verify
date: 2026-07-17 14:50:20 +00:00
tags:
  - ryanjmichie-git
  - GitHub Actions
draft: false
repo: https://github.com/ryanjmichie-git/forgeproof-verify
marketplace: https://github.com/marketplace/actions/forgeproof-verify
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action automates the verification of ForgeProof `.rpack` bundles in pull requests. It ensures that AI-generated code is properly sealed into provenance bundles and checks their integrity and completeness, failing the check on tampering. The action posts a human-readable audit report as a PR comment and writes the same report to the job summary. It supports glob patterns for bundle paths and options to control strictness and require bundle presence.
---


Version updated for **https://github.com/ryanjmichie-git/forgeproof-verify** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/forgeproof-verify) to find the latest changes.

## Action Summary

This GitHub Action automates the verification of ForgeProof `.rpack` bundles in pull requests. It ensures that AI-generated code is properly sealed into provenance bundles and checks their integrity and completeness, failing the check on tampering. The action posts a human-readable audit report as a PR comment and writes the same report to the job summary. It supports glob patterns for bundle paths and options to control strictness and require bundle presence.

## What's Changed

Initial release: a stdlib-only composite action that verifies ForgeProof `.rpack`
provenance bundles (Ed25519-signed, SHA-256 hash-chained audit trails for
AI-generated code) on pull requests.

- **Strict by default** — tamper *or* missing evidence turns the check red
  (`strict` and `require-bundle` default to true); every input fails closed.
- **Audit report where you need it** — written to the job summary and upserted
  as a single PR comment that updates in place.
- **Fork-safe** — on fork PRs the report goes to the job summary;
  `pull_request_target` is deliberately unsupported.
- **Vendored verifier** with a hash sync-check against the pinned upstream
  plugin release, so drift fails CI.
- Proven by a 13-job CI matrix across Ubuntu/macOS/Windows, including a
  4-way tamper matrix.

Pair it with a required-status ruleset to block merging tampered PRs — see the
[branch-protection recipe](https://github.com/ryanjmichie-git/forgeproof-plugin/blob/main/docs/branch-protection.md).

