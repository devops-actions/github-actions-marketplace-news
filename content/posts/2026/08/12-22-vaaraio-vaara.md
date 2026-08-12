---
title: Vaara Policy Check
date: 2026-08-12 22:39:16 +00:00
tags:
  - vaaraio
  - GitHub Actions
draft: false
repo: https://github.com/vaaraio/vaara
marketplace: https://github.com/marketplace/actions/vaara-policy-check
version: v1.66.2
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  Vaara is a Python library that provides verifiable receipts for autonomous actions, ensuring accountability and trust in decision-making processes. It automates the process of verifying and auditing autonomous actions by providing secure logging and evidence storage, which can be used to prove the outcomes of actions and maintain traceability of all activities within an organization.
---


Version updated for **https://github.com/vaaraio/vaara** to version **v1.66.2**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vaara-policy-check) to find the latest changes.

## Action Summary

Vaara is a Python library that provides verifiable receipts for autonomous actions, ensuring accountability and trust in decision-making processes. It automates the process of verifying and auditing autonomous actions by providing secure logging and evidence storage, which can be used to prove the outcomes of actions and maintain traceability of all activities within an organization.

## What's Changed

## [1.66.2] - 2026-08-12

### Fixed

- **The documented way to use the action did not work.** The README and
  `docs/github-action.md` tell consumers `uses: vaaraio/vaara@v1`, which is the
  GitHub Actions convention, but no `v1` tag existed. Anyone copying that line
  got "unable to resolve action vaaraio/vaara@v1". A floating `v1` tag now
  exists and moves with each release.
- The release workflow triggered on `v*`, which would have fired it for the
  floating `v1` tag, derived version "1", and failed looking for a changelog
  entry that cannot exist. It now triggers only on full version tags.
- One example in `docs/github-action.md` pinned `v1.65.0`, a release that
  predates the action existing.

### Changed

- The action's display name is now "Vaara Policy Check". This is the title
  GitHub Marketplace shows. The listing URL is unaffected.


