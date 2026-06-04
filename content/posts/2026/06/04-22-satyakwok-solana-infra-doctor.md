---
title: Solana Infra Doctor
date: 2026-06-04 22:46:10 +00:00
tags:
  - satyakwok
  - GitHub Actions
draft: false
repo: https://github.com/satyakwok/solana-infra-doctor
marketplace: https://github.com/marketplace/actions/solana-infra-doctor
version: v0.10.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/satyakwok/solana-infra-doctor** to version **v0.10.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/solana-infra-doctor) to find the latest changes.

## What's Changed

Distribution & CI tooling release — no crate runtime, CLI, output, or JSON-shape changes.

- **Prebuilt binaries + `cargo binstall`**: each release ships per-target `sol-doctor-<target>` archives (tgz, zip on Windows); `cargo binstall solana-infra-doctor` fetches them instead of compiling.
- **GitHub Action** (`action.yml`): a composite action that installs `sol-doctor` and runs it, gating a workflow job on Solana RPC readiness via the verdict exit code (0 GOOD / 1 WARNING / 2 BAD / 3 UNKNOWN). Inputs passed via the environment to prevent shell injection; self-test workflow included.
- **Action hardening**: `--fail-on-warning` and `--samples` are gated on `command: check`; CI tag docs clarified (moving `@v1` vs pinned release tags).

Install: `cargo install solana-infra-doctor` · `cargo binstall solana-infra-doctor` · `uses: satyakwok/solana-infra-doctor@v1`
