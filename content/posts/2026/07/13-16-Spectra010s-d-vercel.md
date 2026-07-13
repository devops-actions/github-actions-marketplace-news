---
title: Deploy to Vercel
date: 2026-07-13 16:33:42 +00:00
tags:
  - Spectra010s
  - GitHub Actions
draft: false
repo: https://github.com/Spectra010s/d-vercel
marketplace: https://github.com/marketplace/actions/deploy-to-vercel
version: v1.2.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/Spectra010s/d-vercel** to version **v1.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/deploy-to-vercel) to find the latest changes.

## What's Changed

## Added

- `prebuilt` input option — deploy prebuilt assets using `--prebuilt`, skipping `vercel pull` ([#4](https://github.com/Spectra010s/d-vercel/pull/6))
- `sticky-comment` input option — choose between updating a single sticky PR comment or posting a new one on each change ([#3](https://github.com/Spectra010s/d-vercel/pull/5))
- [CONTRIBUTING.md](./CONTRIBUTING.md) — developer onboarding guide ([#8](https://github.com/Spectra010s/d-vercel/pull/8))
- `prettier` added to `devDependencies` for consistent formatting on fresh checkouts ([#8](https://github.com/Spectra010s/d-vercel/pull/8))
- Linked contributing guide in README and updated compiled dist ([#11](https://github.com/Spectra010s/d-vercel/pull/11))

## Removed

- `marker` input — internalized as a constant; users no longer need to configure it
