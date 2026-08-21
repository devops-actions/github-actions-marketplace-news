---
title: rung gate
date: 2026-08-21 21:57:42 +00:00
tags:
  - rung-dev
  - GitHub Actions
draft: false
repo: https://github.com/rung-dev/rung
marketplace: https://github.com/marketplace/actions/rung-gate
version: v0.6.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  rung is an AI verification tool that captures and records the execution of a change, providing a concrete record of what was done. It helps ensure that agents can verify their work better by replacing claims with actual checks and provides deterministic gates to review results without relying on AI or external context. This allows for more reliable verification in production environments.
---


Version updated for **https://github.com/rung-dev/rung** to version **v0.6.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rung-gate) to find the latest changes.

## Action Summary

rung is an AI verification tool that captures and records the execution of a change, providing a concrete record of what was done. It helps ensure that agents can verify their work better by replacing claims with actual checks and provides deterministic gates to review results without relying on AI or external context. This allows for more reliable verification in production environments.

## What's Changed

## rung 0.6.0

Adds `rung attest`, the reviewer half of the surface, plus a byte-anchor so an independent verdict cannot be transplanted onto a different bundle.

### New
- **`rung attest`**: attach an independent reviewer's verdict to one claim of an existing `evidence-bundle/v2`, lift it to `context: independent`, and re-gate in one step, exiting with the gate's verdict. The only way to reach `independent`. Supports `--model`, a `--panel`, and `--lab` (cross-lab), with `--claim-id`, `--require-artifacts`, and `--tier`.
- **`rung run --model`**: record `change.producer.model` verbatim, so the gate can define model independence.
- **`attestation.artifact_shas`** schema field: the sorted set of the claim's verified artifact hashes an anchored attestation carries.

### Changed (may newly block)
- Cross-model and cross-lab qualifiers now require an **anchored** attestation: `attestation.artifact_shas` must set-equal the gate's re-verified capture hashes. A qualifier that is not byte-bound blocks. A hand-authored cross-model/cross-lab bundle with no `artifact_shas` that passed before will now block until re-attested with `rung attest`.

### Trust posture
- attest only ever lowers trust: a reviewer `fail`/`blocked` lowers the claim; `skip` is not a reviewer verdict; a panel `pass` aggregate is refused over any dissenting member. No artifact access is disclosed as unbound, never minted byte-bound; a hash mismatch refuses. `--tier` drives only the re-gate, never the emitted bundle.

Exit-code contract unchanged: `0` pass, `30` block, `2` usage / cannot-evaluate.

