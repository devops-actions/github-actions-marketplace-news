---
title: Solana Infra Doctor
date: 2026-06-06 06:30:04 +00:00
tags:
  - satyakwok
  - GitHub Actions
draft: false
repo: https://github.com/satyakwok/solana-infra-doctor
marketplace: https://github.com/marketplace/actions/solana-infra-doctor
version: v0.14.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/satyakwok/solana-infra-doctor** to version **v0.14.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/solana-infra-doctor) to find the latest changes.

## What's Changed


### Added
- A top-level **`schema_version`** field on `check`, `compare`, and `ws` JSON
  output (previously only on the Yellowstone gRPC JSON), so every `--json`
  payload is versioned for forward-compatible consumption.

### Documentation / metadata
- Document the data-readiness (`--data`) output and add real terminal
  screenshots for `check --data` and `compare --data`.
- Add `homepage` and `documentation` to the crate metadata; correct the
  resilience module doc (HTTP 5xx is not retried — only timeouts, connection
  errors, and 429).


