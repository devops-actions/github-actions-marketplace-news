---
title: naoru - AI CI Doctor
date: 2026-06-13 06:52:49 +00:00
tags:
  - clouddrove
  - GitHub Actions
draft: false
repo: https://github.com/clouddrove/naoru
marketplace: https://github.com/marketplace/actions/naoru-ai-ci-doctor
version: v0.1.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/clouddrove/naoru** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/naoru-ai-ci-doctor) to find the latest changes.

## What's Changed

🩺 **naoru v0.1.0** — works on PR-less pipelines + far more reliable log fetching.

### New
- **Step Summary fallback** — on `workflow_dispatch`/`schedule` runs with no PR, the diagnosis is written to the job **Step Summary**. PR comment still posts when a PR exists. Makes naoru useful for Terraform deploy/drift pipelines.

### Fixed
- **Reliable logs** — fetch the failed *job's* logs directly (`downloadJobLogsForWorkflowRun`) instead of the run-level zip, which 404s while the run is still in progress. naoru is usually a job in the same run, so this was a real blind spot. Removes the `adm-zip` dependency.

### Verified live
PR comment path and dispatch (no-PR) Step Summary path both confirmed end-to-end via OpenRouter.

