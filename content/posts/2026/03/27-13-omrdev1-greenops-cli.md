---
title: GreenOps PR Analysis
date: 2026-03-27 13:56:55 +00:00
tags:
  - omrdev1
  - GitHub Actions
draft: false
repo: https://github.com/omrdev1/greenops-cli
marketplace: https://github.com/marketplace/actions/greenops-pr-analysis
version: v0.2.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/omrdev1/greenops-cli** to version **v0.2.1**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/greenops-pr-analysis) to find the latest changes.

## Action Summary

The **GreenOps CLI** GitHub Action automates carbon footprint analysis and cost optimization for infrastructure changes in CI/CD pipelines, specifically focusing on AWS resources. It identifies the environmental and financial impact of infrastructure modifications in pull requests, provides actionable recommendations for reducing CO2 emissions and costs, and supports Terraform plans for detailed resource analysis. This tool simplifies sustainability efforts by integrating carbon footprint linting directly into the development workflow.

## Release notes

## What's in this release

### Core fixes
- **Extractor:** provider-level region resolution — real AWS plans now analyse correctly without needing `region` set on individual resources
- **Engine:** division by zero guards, strict error typing throughout
- **Formatters:** coverage disclaimer for unsupported compute types, NaN protection

### Test suite
- 50 unit tests across engine, extractor, all formatters, and recommendations
- Live E2E fixture (`fixtures/tfplan.e2e.json`) generated from a real AWS account
- GitHub Action workflow that runs on every PR touching core files

### Distribution
- npm-ready `package.json` with repository, keywords, license, and homepage fields
- Upsell prompt updated to coming-soon copy
- `SECURITY.md` rewritten with zero-network posture documentation
- `CONTRIBUTING.md` rewritten with branching strategy, commit style, PR checklist

## Quickstart

```yaml
- name: GreenOps Carbon Lint
  uses: omrdev1/greenops-cli@v0.2.1
  with:
    plan-file: plan.json
    github-token: ${{ secrets.GITHUB_TOKEN }}
```

## Supported matrix

**Regions:** us-east-1, us-west-2, eu-west-1, eu-central-1, ap-southeast-2  
**Instances:** t3.medium/large, t4g.medium/large, m5.large/xlarge, m6g.large/xlarge, c5.large/xlarge, c6g.large/xlarge
