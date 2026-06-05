---
title: Andy — PR Handoff by Drift
date: 2026-06-05 06:44:15 +00:00
tags:
  - refactorlab
  - GitHub Actions
draft: false
repo: https://github.com/refactorlab/drift
marketplace: https://github.com/marketplace/actions/andy-pr-handoff-by-drift
version: drift-lab-v0.11.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/refactorlab/drift** to version **drift-lab-v0.11.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/andy-pr-handoff-by-drift) to find the latest changes.

## What's Changed

## Drift Lab drift-lab-v0.11.1

Built for **macOS** (Apple Silicon + Intel) and **Linux** (x86_64). Bump: `patch`.

### Install
- **macOS arm64** — `Drift Lab_*_aarch64.dmg`
- **macOS Intel** — `Drift Lab_*_x64.dmg`
- **Debian/Ubuntu** — `sudo dpkg -i drift-lab_*_amd64.deb`
- **Other Linux** — `chmod +x drift-lab_*.AppImage && ./drift-lab_*.AppImage`

### Verifying
Every asset is hashed in `SHA256SUMS`. Run `shasum -a 256 -c SHA256SUMS` after downloading.

### Changes since drift-lab-v0.11.0
- chore: remove web-app cloud portal and its infra (15ee8e2)
- feat(extension+profiler): structured PR code-diff, richer report sections, and WASM-safe scanner (b1fcb44)
- chore(profiler): bump drift-static-profiler 0.8.0 → 0.8.1; correlate wasm/extension release to the bump (9def8df)

