---
title: Andy — PR Handoff by Drift
date: 2026-05-29 14:48:00 +00:00
tags:
  - refactorlab
  - GitHub Actions
draft: false
repo: https://github.com/refactorlab/drift
marketplace: https://github.com/marketplace/actions/andy-pr-handoff-by-drift
version: drift-lab-v0.10.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/refactorlab/drift** to version **drift-lab-v0.10.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/andy-pr-handoff-by-drift) to find the latest changes.

## Action Summary

The Andy GitHub Action is a pull request (PR) review assistant that analyzes code changes and posts a single, comprehensive comment summarizing what has changed, why the changes are necessary, and their potential impact. It automates context-sharing and provides actionable insights, addressing common PR challenges like unclear intent, incomplete reviews, and lack of visibility into the impact of changes. This tool helps streamline code reviews, reduce errors, and improve team collaboration.

## What's Changed

## Drift Lab drift-lab-v0.10.0

Built for **macOS** (Apple Silicon + Intel) and **Linux** (x86_64). Bump: `minor`.

### Install
- **macOS arm64** — `Drift Lab_*_aarch64.dmg`
- **macOS Intel** — `Drift Lab_*_x64.dmg`
- **Debian/Ubuntu** — `sudo dpkg -i drift-lab_*_amd64.deb`
- **Other Linux** — `chmod +x drift-lab_*.AppImage && ./drift-lab_*.AppImage`

### Verifying
Every asset is hashed in `SHA256SUMS`. Run `shasum -a 256 -c SHA256SUMS` after downloading.

### Changes since drift-lab-v0.9.3
- feat(action): make start-on-pr-comment additive instead of exclusive (0f555f0)
- fix(profiler): bound scan-pr memory to stop runner OOM ("operation canceled") (146036e)
- feat(profiler,action): memory-bound scan-pr + /drift issue tracking (3cf8810)
- fix and add changes related to the improvements pr comment ,  fix tts from summary pr  and pr invocation (2c0d9de)
- release(profiler): drift-static-profiler v0.6.3 (944656c)
- feat(action): spoken PR audio summary + money axis as tech-debt servicing (5f24280)
- feat(profiler): reuse static findings across PR-review algorithms (c86ad51)

