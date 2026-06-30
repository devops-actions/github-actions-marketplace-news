---
title: Krystal Quorum Multi-AI Plan Review
date: 2026-06-30 15:12:15 +00:00
tags:
  - KrystalUnity
  - GitHub Actions
draft: false
repo: https://github.com/KrystalUnity/krystal-quorum
marketplace: https://github.com/marketplace/actions/krystal-quorum-multi-ai-plan-review
version: v0.6.7
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/KrystalUnity/krystal-quorum** to version **v0.6.7**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/krystal-quorum-multi-ai-plan-review) to find the latest changes.

## What's Changed

Krystal Quorum v0.6.7 fixes the Marketplace Action gate for CI users.

What's new:
- Fixed the GitHub Action so artifact outputs are emitted even when Quorum correctly exits non-zero for REVISE, BLOCK, or runtime errors.
- Added first-class hosted Action inputs for api-token and api-base-url.
- Added latest-output-dir for the newest per-run artifact directory.
- Added a CI warning when reviewers: mock is used, because mock is a structural smoke test rather than real multi-AI review.
- Updated README and integration docs so hosted CI is the primary Marketplace example.

Install:

```bash
python -m pip install krystal-quorum==0.6.7
```

GitHub Action:

```yaml
- uses: KrystalUnity/krystal-quorum@v0.6.7
  with:
    plan: docs/plans/change.md
    reviewers: hosted:quick
    api-token: ${{ secrets.KU_TOKEN }}
    package-spec: krystal-quorum==0.6.7
```

Full changelog: https://github.com/KrystalUnity/krystal-quorum/compare/v0.6.6...v0.6.7
