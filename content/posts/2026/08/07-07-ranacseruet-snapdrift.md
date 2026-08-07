---
title: SnapDrift
date: 2026-08-07 07:30:12 +00:00
tags:
  - ranacseruet
  - GitHub Actions
draft: false
repo: https://github.com/ranacseruet/snapdrift
marketplace: https://github.com/marketplace/actions/snapdrift
version: v0.8.1
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  SnapDrift captures full-page application frames, compares them against a known baseline, and reports drift directly in GitHub Actions. It solves issues related to detecting UI changes across pull requests by automating the baseline capture, pull request drift detection, and report upserts. Key capabilities include route scoping, drift enforcement through `diff.mode`, and support for both local and hosted Snap backends.
---


Version updated for **https://github.com/ranacseruet/snapdrift** to version **v0.8.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/snapdrift) to find the latest changes.

## Action Summary

SnapDrift captures full-page application frames, compares them against a known baseline, and reports drift directly in GitHub Actions. It solves issues related to detecting UI changes across pull requests by automating the baseline capture, pull request drift detection, and report upserts. Key capabilities include route scoping, drift enforcement through `diff.mode`, and support for both local and hosted Snap backends.

## What's Changed

Patch release that makes the root action publishable to the GitHub Marketplace. Publishing `v0.8.0` failed validation.

## Fixes

- **The root action can actually be published to the Marketplace** — its description was 130 characters, and GitHub rejects the listing at 125 or more. Shortened to 115, leading with "visual regression" so the listing matches what people search for. `npm run validate:actions` and `tests/marketplace-metadata.test.js` now enforce the limit against the root action; the sub-action descriptions are unaffected, since the rule only applies to the published entry point.

## Upgrading

No functional change from `v0.8.0` — the dispatcher, its inputs, its outputs, and the wrapper actions are all identical. Only the metadata description changed. If you are already on `v0.8.0`, move to `v0.8.1` for consistency with the published listing; nothing will behave differently.

```yaml
- name: SnapDrift Report
  uses: ranacseruet/snapdrift@v0.8.1
  with:
    mode: pr-diff
    github-token: ${{ secrets.GITHUB_TOKEN }}
    repo-config-path: .github/snapdrift.json
```

**Full changelog:** https://github.com/ranacseruet/snapdrift/blob/main/CHANGELOG.md
