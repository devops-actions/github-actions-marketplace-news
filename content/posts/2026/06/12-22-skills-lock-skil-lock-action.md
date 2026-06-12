---
title: SkilLock CI
date: 2026-06-12 22:52:40 +00:00
tags:
  - skills-lock
  - GitHub Actions
draft: false
repo: https://github.com/skills-lock/skil-lock-action
marketplace: https://github.com/marketplace/actions/skillock-ci
version: v0.2.1
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/skills-lock/skil-lock-action** to version **v0.2.1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skillock-ci) to find the latest changes.

## What's Changed

## v0.2.1

- **New input: `verify-signature`** — when enabled, the Action cosign-verifies `checksums.txt` against the release workflow's OIDC identity *before* trusting any downloaded binary (keyless, no key management). Requires a `pin-binary` of v0.2.0 or later; warns and falls back to checksum-only verification otherwise.
- Installs cosign via SHA-pinned `sigstore/cosign-installer` (GitHub runners no longer ship cosign).
- Docs: usage examples bumped to `pin-binary: v0.2.1`.

Full CLI changes in [skil-lock v0.2.1](https://github.com/skills-lock/skil-lock/releases/tag/v0.2.1).

