---
title: TerraLens Plan Analysis
date: 2026-06-02 06:46:53 +00:00
tags:
  - zain1022
  - GitHub Actions
draft: false
repo: https://github.com/zain1022/terralens-action
marketplace: https://github.com/marketplace/actions/terralens-plan-analysis
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/zain1022/terralens-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/terralens-plan-analysis) to find the latest changes.

## What's Changed

First stable release of the TerraLens GitHub Action.

Analyze every `terraform plan` on each pull request and post a single PR comment with risk detection, cost estimates, and a pre-apply checklist. The comment updates in place as the PR evolves — no duplicates across pushes.

**Features**
- Risk detection (critical / high / medium / low) with line references back into your plan
- Per-resource and aggregate monthly cost estimates
- Plain-English explanations of each change
- Pre-apply checklist of items to verify before `terraform apply`
- Idempotent PR comments via a marker so each PR has exactly one TerraLens comment

**Tiers**
- **Free** — 5 PR analyses per repository per calendar month, no setup beyond adding the workflow.
- **Pro** — unlimited analyses, powered by Claude Opus for higher-quality reasoning. Generate an API key at [terralens.io/account](https://terralens.io/account).

**Quick start**

```yaml
- uses: zain1022/terralens-action@v1
  with:
    plan-file: plan.txt
    api-key: ${{ secrets.TERRALENS_API_KEY }}  # optional, Pro only
```

See the [README](https://github.com/zain1022/terralens-action#readme) for full setup, including how to generate `plan.txt` from `terraform plan` in your workflow.
