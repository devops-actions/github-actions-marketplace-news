---
title: RunRight CI Resource Monitor
date: 2026-06-23 06:59:06 +00:00
tags:
  - gbudjeakp
  - GitHub Actions
draft: false
repo: https://github.com/gbudjeakp/run-right
marketplace: https://github.com/marketplace/actions/runright-ci-resource-monitor
version: v1.0.7
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/gbudjeakp/run-right** to version **v1.0.7**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/runright-ci-resource-monitor) to find the latest changes.

## What's Changed

## What's Changed

### Fixes

**CI provider detection is now accurate**
GitHub Actions runners were previously identified as GCP machines (e.g. `e2-highcpu-16`) because hardware specs matched the GCP catalog. RunRight now detects the CI platform first (`GITHUB_ACTIONS`, `GITLAB_CI`, etc.) and constrains catalog matching to the correct provider — GitHub-hosted runners will now show as `ubuntu-latest`, `ubuntu-latest-4-cores`, etc.

**Clean job names in the dashboard**
The `job-id` input now defaults to `${{ github.job }}` instead of `${{ github.run_id }}-${{ github.run_attempt }}`. Jobs appear as `build`, `test`, `lint` rather than `27974467740-1`.

### Internal

- 14 unit tests added for `catalog.Query`, `catalog.FindByID`, and `catalog.DetectMachine` (including provider hint behaviour)
- Action published to GitHub Marketplace as **RunRight CI Resource Monitor**

---

```yaml
- uses: gbudjeakp/run-right@v1
  with:
    step: start   # or stop / run
    provider: aws # optional — filter recommendations to aws, gcp, or github
```

**Full Changelog**: https://github.com/gbudjeakp/run-right/compare/v1.0.6...v1.0.7
