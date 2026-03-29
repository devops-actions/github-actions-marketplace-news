---
title: GreenOps PR Analysis
date: 2026-03-29 21:50:32 +00:00
tags:
  - omrdev1
  - GitHub Actions
draft: false
repo: https://github.com/omrdev1/greenops-cli
marketplace: https://github.com/marketplace/actions/greenops-pr-analysis
version: v0.7.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/omrdev1/greenops-cli** to version **v0.7.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/greenops-pr-analysis) to find the latest changes.

## Action Summary

GreenOps CLI is a GitHub Action that analyzes Terraform plans to assess the carbon footprint, water consumption, and cost of cloud infrastructure across AWS, Azure, and GCP. It automates the identification of environmental and cost optimizations by providing actionable recommendations directly in pull requests, helping teams reduce operational impact and improve sustainability. Key features include multi-cloud support, inline suggestions, and policy-based budgeting for CO2 and cost thresholds.

## What's Changed

- feat: v0.7.0 — memory power draw (CPU + memory watts per CCF standard), 3 new tests (#16) (a3e8424)
- feat: v0.6.0 — lifecycle CO2e policy, suggestions pagination, address-based targeting, 403 hints, methodology docs (#15) (d56e3d4)
- fix: defer process.exit until postSuggestions async chain resolves (#14) (4526dad)
- docs: update E2E testing section for all three providers (c279469)
- fix: rebuild dist/index.cjs for v0.5.3 (9eaecbf)
- fix: bump package.json to v0.5.3 (7d33640)
- fix: v0.5.3 — wider table columns, Azure/GCP E2E fixtures, all three … (#13) (a30321a)
- fix: exclude upgrade scripts from npm tarball (272db24)
- fix: phase 1 bug fixes — unsupported instance visibility, suggestions provider-aware, WUE citation (#12) (0637493)
- feat: v0.5.0 — multi-cloud support (AWS + Azure + GCP) (#11) (07af3cd)
