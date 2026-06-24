---
title: MaintainerOps AI
date: 2026-06-24 07:07:39 +00:00
tags:
  - rtonf
  - GitHub Actions
draft: false
repo: https://github.com/rtonf/maintainerops-ai
marketplace: https://github.com/marketplace/actions/maintainerops-ai
version: v0.1.9
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/rtonf/maintainerops-ai** to version **v0.1.9**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/maintainerops-ai) to find the latest changes.

## What's Changed

# v0.1.9 npm Package Repair

Date: 2026-06-24

## Summary

This release repairs the npm packaging defect in `0.1.8`. It contains the same verified security remediation and adds a mandatory publication-time build so the CLI runtime cannot be omitted when generated directories were cleaned before publishing.

## Changes

- Add `prepack` to build `dist/cli.js` and regenerate `dist-action/index.js` before npm pack or publish.
- Retain the `0.1.8` incident record in public release and maintenance evidence.
- Require a clean temporary installation and CLI execution check before publishing GitHub Release or Marketplace updates.

## Verification

- `npm run verify`: passed with 26 unit tests, 1 UI smoke test, 7 eval cases, publint, and 0 audit vulnerabilities.
- `npm pack`: produced a 38-file tarball containing `dist/cli.js`.
- Clean temporary installation: passed.
- Installed Windows binary `maintainerops.cmd --help`: passed.

## Publication Order

1. Publish npm `0.1.9` with maintainer OTP.
2. Verify `npm exec --yes --package=maintainerops-ai@0.1.9 -- maintainerops --help`.
3. Deprecate npm `0.1.8` or move the `latest` tag away from it.
4. Create and publish GitHub Release `v0.1.9`.
5. Publish and confirm GitHub Marketplace `v0.1.9`.

