---
title: Vaara Policy Check
date: 2026-08-14 22:17:34 +00:00
tags:
  - vaaraio
  - GitHub Actions
draft: false
repo: https://github.com/vaaraio/vaara
marketplace: https://github.com/marketplace/actions/vaara-policy-check
version: v1.67.0
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  This GitHub Action automates the creation and management of verifiable receipts for autonomous actions, ensuring accountability and transparency in decision-making processes. It provides a secure and tamper-evident record of every call to governed functions, allowing users to verify outcomes offline using a simple HTML verification tool. The action integrates with various platforms and languages, making it easy to implement across different projects.
---


Version updated for **https://github.com/vaaraio/vaara** to version **v1.67.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vaara-policy-check) to find the latest changes.

## Action Summary

This GitHub Action automates the creation and management of verifiable receipts for autonomous actions, ensuring accountability and transparency in decision-making processes. It provides a secure and tamper-evident record of every call to governed functions, allowing users to verify outcomes offline using a simple HTML verification tool. The action integrates with various platforms and languages, making it easy to implement across different projects.

## What's Changed

## [1.67.0] - 2026-08-14

### Added

- **Anyone can now verify a receipt without installing anything.**
  `webpage/verify.html` is a single file with no build step and no
  dependencies. It recomputes the DSSE pre-authentication encoding, takes its
  digest, and checks the Ed25519 signature with WebCrypto. The receipt never
  leaves the browser, nothing is uploaded, and the page works with the network
  off, so verification is not a service and not a party anyone has to trust.
  It mirrors the independent Python checker under `tests/vectors/`, which
  imports no Vaara code either; both were run against `agent_decision_v0` and
  agree on the PAE digest, the signature and the decision.
- The page also states what a passing check does **not** establish: that the
  key belongs to the expected party, that the signed statement is true, that
  `decided_at` means anything without an external time authority, or that one
  receipt is a whole history.
- **`vaara trail publish-head`** publishes a trail's head digest to a public
  transparency log. Takes the same `--trail` / `--db` source as the other trail
  commands, plus `--dry-run`, `--log` for a self-hosted or EU-operated
  endpoint, and `--yes` for non-interactive use. Opt-in and off by default.
- The command prints, on every run, what leaves the machine and what does not,
  that publication is permanent with no erasure available afterwards, that the
  log is public and enumerable rather than visible only to its operator, and
  that everything published under one key can be grouped by anyone. An
  interactive run confirms before publishing; `--yes` skips the prompt, never
  the disclosure.
- **`vaara.attestation.rekor_log`** backs that with Sigstore Rekor, the adapter
  `transparency_log.py` has described in its docstring since it was written. A
  log the emitter operates proves the chain is internally consistent; it cannot
  prove the emitter kept one history. What leaves the machine is one digest and
  a signature over it. Offline verification never calls it.


