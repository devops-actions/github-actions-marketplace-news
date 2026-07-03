---
title: Remyx Outrider
date: 2026-07-03 06:35:26 +00:00
tags:
  - remyxai
  - GitHub Actions
draft: false
repo: https://github.com/remyxai/outrider
marketplace: https://github.com/marketplace/actions/remyx-outrider
version: v1.7.9
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/remyxai/outrider** to version **v1.7.9**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/remyx-outrider) to find the latest changes.

## What's Changed

v1.7.8 was tagged on the wrong commit and did not actually contain the enrichment fix; v1 pointer was updated but the deployed code path in fast-paths still skipped `_enrich_candidate_licenses`. This release ships the real fix: `_enrich_candidate_licenses(candidates, target)` is now called on the pin-arxiv and search-method fast-paths (gated on `REMYX_LICENSE_GATE`, idempotent, best-effort). REMYX-190 evidence: https://github.com/remyxai/VQASynth/issues/105 opened with `license_class=unknown` despite WnQinm/Annotator having a clearly readable BSD-3-Clause LICENSE — the fast-path never called the enrichment step.
