---
title: GreenOps PR Analysis
date: 2026-03-21 05:49:51 +00:00
tags:
  - omrdev1
  - GitHub Actions
draft: false
repo: https://github.com/omrdev1/greenops-cli
marketplace: https://github.com/marketplace/actions/greenops-pr-analysis
version: v0.2.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/omrdev1/greenops-cli** to version **v0.2.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/greenops-pr-analysis) to find the latest changes.

## Action Summary

The GreenOps CLI GitHub Action provides automated carbon footprint analysis for infrastructure changes in CI/CD pipelines. It evaluates Terraform plans, estimates the carbon emissions and costs of infrastructure resources, and offers actionable recommendations to optimize for lower environmental impact and cost savings. This tool simplifies sustainability-focused decision-making during development by integrating seamlessly with pull requests and offering detailed insights into emissions and optimization opportunities.

## Release notes

A zero-network CLI and GitHub Action that parses your Terraform plan and posts a carbon (gCO2e) and cost estimate as a PR comment — before you merge.

## What it does
- Parses `terraform show -json` output
- Calculates carbon and cost estimates against the open-source Cloud Carbon Footprint (CCF) methodology
- Posts a formatted summary comment on your GitHub PR
- Recommends ARM instance swaps where identical compute is available for less power and cost

## Usage
Add to your workflow:

uses: omrdev1/greenops-cli@v0.2.0

## Methodology
Math is MIT-licensed and auditable.
Reference: `factors.json` · `engine.test.ts`

## Notes
- Runs entirely offline — no network calls, no AWS credentials required
- PRs to the methodology ledger are welcome
