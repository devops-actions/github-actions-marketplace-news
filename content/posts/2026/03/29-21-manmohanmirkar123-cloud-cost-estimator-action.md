---
title: Cloud Cost Estimator
date: 2026-03-29 21:50:56 +00:00
tags:
  - manmohanmirkar123
  - GitHub Actions
draft: false
repo: https://github.com/manmohanmirkar123/cloud-cost-estimator-action
marketplace: https://github.com/marketplace/actions/cloud-cost-estimator
version: v1.0.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/manmohanmirkar123/cloud-cost-estimator-action** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cloud-cost-estimator) to find the latest changes.

## Action Summary

The **Cloud Cost Estimator GitHub Action** automates the process of estimating monthly costs for cloud resources based on infrastructure-as-code (IaC) configurations like Terraform and CloudFormation. It integrates with CI workflows to provide real-time cost summaries, updates pull request comments with cost breakdowns, and generates detailed reports in both JSON and human-readable formats. This action helps developers and teams optimize cloud expenses by providing accurate cost insights directly within their development workflows.

## What's Changed

## Cloud Cost Estimator v1.0.0

Initial release of Cloud Cost Estimator for GitHub Actions.

### Highlights

- Estimate monthly cloud costs directly from Infrastructure as Code.
- Supports Terraform and CloudFormation projects.
- Works with AWS, Azure, and GCP.
- Generates JSON and readable text cost reports.
- Can post cost summaries directly to pull requests.
- Can upload reports as downloadable workflow artifacts.
- Automatically installs required tooling at runtime.

### Inputs

- `iac-path`
- `provider`
- `infracost-api-key`
- `github-token`
- `comment-on-pr`
- `upload-report-artifact`
- `artifact-name`

### Outputs

- `total-monthly-cost`
- `breakdown`
- `report`
- `report-json`

### Setup

Create an `INFRACOST_API_KEY` repository secret before using the action. The Infracost API key is available on the free plan.

### Example

```yaml
- uses: manmohanmirkar123/cloud-cost-estimator-action@v1.0.0
  with:
    iac-path: examples/terraform-aws
    provider: aws
    infracost-api-key: ${{ secrets.INFRACOST_API_KEY }}

