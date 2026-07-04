---
title: Powderworks Housekeeping
date: 2026-07-04 14:23:06 +00:00
tags:
  - zmaril
  - GitHub Actions
draft: false
repo: https://github.com/zmaril/housekeeping
marketplace: https://github.com/marketplace/actions/powderworks-housekeeping
version: v1.4.0
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/zmaril/housekeeping** to version **v1.4.0**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/powderworks-housekeeping) to find the latest changes.

## What's Changed

Captain dispatch: `housekeeper captain --dispatch` (action input `dispatch: true`) triggers every member's self-audit immediately — new checks reach the fleet on demand, not a week of crons later; workflow_dispatch joins the required member triggers. Unknown keys are surfaced at both scales: [policy.*] typos fail the captain, .housekeeping.toml typos fail the audit. `v1` fast-forwarded.
