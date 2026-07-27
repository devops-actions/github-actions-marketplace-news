---
title: Trooth Compliance Scan
date: 2026-07-27 14:51:24 +00:00
tags:
  - troothllc
  - GitHub Actions
draft: false
repo: https://github.com/troothllc/trooth-action
marketplace: https://github.com/marketplace/actions/trooth-compliance-scan
version: v1.0.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action automates Trooth compliance scans on every push or pull request. It integrates with the Trooth API to evaluate Terraform plans against various frameworks like SOC 2, ISO 27001, EU AI Act, NIST AI RMF, and HIPAA. The action provides a workflow status based on the severity threshold, a Trust Score, a link to the full scan report, and an optional PR comment with the scan summary. It supports configuration options for frameworks, fail-on severity, and output reporting, making it versatile for different needs in DevSecOps pipelines.
---


Version updated for **https://github.com/troothllc/trooth-action** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/trooth-compliance-scan) to find the latest changes.

## Action Summary

This GitHub Action automates Trooth compliance scans on every push or pull request. It integrates with the Trooth API to evaluate Terraform plans against various frameworks like SOC 2, ISO 27001, EU AI Act, NIST AI RMF, and HIPAA. The action provides a workflow status based on the severity threshold, a Trust Score, a link to the full scan report, and an optional PR comment with the scan summary. It supports configuration options for frameworks, fail-on severity, and output reporting, making it versatile for different needs in DevSecOps pipelines.

## What's Changed

Run a Trooth compliance preflight on every push and pull request. The action posts your Terraform plan to the Trooth API, scores it against the frameworks you pick, and fails the build when findings cross the line you set.

Free for public repositories at the Bronze tier. Get a key at https://www.trooth.co.

### Use it

```yaml
- uses: troothllc/trooth-action@v1
  with:
    api-key: ${{ secrets.TROOTH_API_KEY }}
    plan-file: plan.json
    frameworks: soc2,iso27001,eu-ai-act,nist-ai-rmf,hipaa
    fail-on: critical
```

### What you get

- A pass or fail gate tied to the `fail-on` severity you choose.
- A composite Trust Score and the raw API verdict.
- A link to the full report on your Public Trust Profile.
- A PR comment and a job summary with finding counts by severity.
- Outputs for downstream steps: `score`, `status`, `verdict`, `report-url`, `findings-count`.

### Frameworks

SOC 2, ISO 27001, EU AI Act, NIST AI RMF, HIPAA. Weight them with the `frameworks` input, or leave it empty to use everything enabled on your tier.

### Before you run it

- Produce a plan file: `terraform plan -out=tfplan` then `terraform show -json tfplan > plan.json`.
- Add your key as `secrets.TROOTH_API_KEY` under Settings, Secrets and variables, Actions.
- License: Apache 2.0.

Trooth automates. Trooth never signs your claims for you.
