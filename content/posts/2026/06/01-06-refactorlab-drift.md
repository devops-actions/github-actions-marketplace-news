---
title: Andy — PR Handoff by Drift
date: 2026-06-01 06:48:42 +00:00
tags:
  - refactorlab
  - GitHub Actions
draft: false
repo: https://github.com/refactorlab/drift
marketplace: https://github.com/marketplace/actions/andy-pr-handoff-by-drift
version: drift-lab-v0.10.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/refactorlab/drift** to version **drift-lab-v0.10.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/andy-pr-handoff-by-drift) to find the latest changes.

## Action Summary

Andy is a GitHub Action designed to enhance pull request reviews by automatically generating a single, comprehensive comment that explains what has changed, the context behind the changes, and their potential impact. It addresses common challenges such as the lack of clarity in PRs, time-consuming reviews, and difficulty understanding the purpose and implications of changes. By providing a quick, actionable summary, Andy streamlines the review process, improves collaboration, and reduces the likelihood of errors being overlooked.

## What's Changed

## Drift Lab drift-lab-v0.10.1

Built for **macOS** (Apple Silicon + Intel) and **Linux** (x86_64). Bump: `patch`.

### Install
- **macOS arm64** — `Drift Lab_*_aarch64.dmg`
- **macOS Intel** — `Drift Lab_*_x64.dmg`
- **Debian/Ubuntu** — `sudo dpkg -i drift-lab_*_amd64.deb`
- **Other Linux** — `chmod +x drift-lab_*.AppImage && ./drift-lab_*.AppImage`

### Verifying
Every asset is hashed in `SHA256SUMS`. Run `shasum -a 256 -c SHA256SUMS` after downloading.

### Changes since drift-lab-v0.10.0
- refactor(action,profiler): collapse PR review to one sticky comment & dedupe suggestions (647d3a0)
- fix(action,profiler): re-anchor off-diff findings & humanize root labels (a47f45b)
- comments render , artifact of pr-scan.json publish json in github runner announymouse (98f039e)
- add default max suggestions fix render pr comments (324510e)
- fix(action): harden Piper TTS pipeline against gibberish-WAV regression (397373c)

