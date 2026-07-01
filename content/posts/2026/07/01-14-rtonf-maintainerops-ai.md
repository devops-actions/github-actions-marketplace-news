---
title: MaintainerOps AI
date: 2026-07-01 14:54:05 +00:00
tags:
  - rtonf
  - GitHub Actions
draft: false
repo: https://github.com/rtonf/maintainerops-ai
marketplace: https://github.com/marketplace/actions/maintainerops-ai
version: v0.1.11
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/rtonf/maintainerops-ai** to version **v0.1.11**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/maintainerops-ai) to find the latest changes.

## What's Changed

# v0.1.11 npm Provenance Metadata Repair

MaintainerOps AI `v0.1.11` is a publishing metadata repair release after `v0.1.10` reached npm Trusted Publishing but failed provenance validation.

## Fix

- Adds `package.json` `repository.url` with `https://github.com/rtonf/maintainerops-ai`.
- Keeps the npm Trusted Publishing workflow tokenless and provenance-backed.
- Preserves the `v0.1.10` model-backed eval, label normalization, and release workflow changes.

## Verification Plan

- `npm run verify`
- GitHub PR checks and post-merge CodeQL
- Publish GitHub Release `v0.1.11`
- Confirm the npm Trusted Publishing workflow publishes `maintainerops-ai@0.1.11`
- Verify:

```bash
npm view maintainerops-ai version dist-tags time --json
npm exec --yes --package maintainerops-ai@latest -- maintainerops --help
```

