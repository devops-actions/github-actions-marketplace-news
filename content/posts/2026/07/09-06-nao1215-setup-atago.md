---
title: Setup atago
date: 2026-07-09 06:59:35 +00:00
tags:
  - nao1215
  - GitHub Actions
draft: false
repo: https://github.com/nao1215/setup-atago
marketplace: https://github.com/marketplace/actions/setup-atago
version: v0.1.1
dependentsNumber: "10"
actionType: Composite
---


Version updated for **https://github.com/nao1215/setup-atago** to version **v0.1.1**.

- This action is used across all versions by **10** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-atago) to find the latest changes.

## What's Changed

## What's changed

- fix: a successful install no longer exits nonzero (the EXIT-trap cleanup referenced an out-of-scope local under `set -u`, failing every green run at the very end)
- docs: drop the "atago is unreleased" warning — [atago v0.1.0](https://github.com/nao1215/atago/releases/tag/v0.1.0) is published and this action now installs it

The floating `v0` tag points at this release. Verified end-to-end against the real v0.1.0 release: checksum, SLSA attestation (`gh attestation verify`), install, and `atago version` / `init` / `run`.
