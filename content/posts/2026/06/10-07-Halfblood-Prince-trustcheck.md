---
title: TrustCheck Package Scanner
date: 2026-06-10 07:07:34 +00:00
tags:
  - Halfblood-Prince
  - GitHub Actions
draft: false
repo: https://github.com/Halfblood-Prince/trustcheck
marketplace: https://github.com/marketplace/actions/trustcheck-package-scanner
version: v2.0.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/Halfblood-Prince/trustcheck** to version **v2.0.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/trustcheck-package-scanner) to find the latest changes.

## What's Changed

Published from immutable commit `79ffde0d89ec37bfa25073a70703abda82832cdc`.
The release workflow publishes PyPI, GitHub Action, and Snap Store
distributions in parallel after shared package and Snap QA.

Release artifacts:
- `dist/*`
- `dist/SHA256SUMS.txt`
- `dist/trustcheck-sbom.json`
- verified `trustcheck_*.snap` with checksum

GitHub Action:
- Immutable: `uses: Halfblood-Prince/trustcheck@v2.0.0`
- Compatible major: `uses: Halfblood-Prince/trustcheck@v2`


**Full Changelog**: https://github.com/Halfblood-Prince/trustcheck/compare/v1.9.8...v2.0.0
