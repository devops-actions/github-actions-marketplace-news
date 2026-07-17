---
title: WAF++ PASS Scan
date: 2026-07-17 14:44:03 +00:00
tags:
  - WAF2p
  - GitHub Actions
draft: false
repo: https://github.com/WAF2p/wafpass-action
marketplace: https://github.com/marketplace/actions/waf-pass-scan
version: v0.1.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The WAF++ PASS GitHub Action automates the execution of WAF++ scans on IaC files in a repository and pushes the results to a specified WAF++ server endpoint. It supports various IaC frameworks like Terraform, Bicep, CDK, and Pulumi. The action handles both bearer token and API key authentication for secure communication with the server. It also provides output parameters such as `run_id`, `score`, and `findings_count` to help users track the scan's status and results.
---


Version updated for **https://github.com/WAF2p/wafpass-action** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/waf-pass-scan) to find the latest changes.

## Action Summary

The WAF++ PASS GitHub Action automates the execution of WAF++ scans on IaC files in a repository and pushes the results to a specified WAF++ server endpoint. It supports various IaC frameworks like Terraform, Bicep, CDK, and Pulumi. The action handles both bearer token and API key authentication for secure communication with the server. It also provides output parameters such as `run_id`, `score`, and `findings_count` to help users track the scan's status and results.

## What's Changed

Run WAF++ PASS scans directly from GitHub Actions and push the results to your WAF++ server.

  ## Highlights

  - **One-step scan & push** — installs the `wafpass` CLI, runs the scan, and POSTs the JSON result to `POST /runs`.
  - **CI/CD-native runs** — every run is automatically marked as `run: { is_cicd: true }` with `triggered_by: github-actions`.
  - **Flexible authentication** — use a Bearer token (`api_token`) or an API key (`api_key`).
  - **Configurable failure policies** — fail on `fail`, `skip`, `any`, or by severity (`low`, `medium`, `high`, `critical`), or use `never`.
  - **Multi-cloud / monorepo ready** — scan multiple space-separated paths in a single step.
  - **Optional extras** — Terraform plan change overview, source upload for dashboard diff previews, and server-fetched controls.

  ## Quick start

  ```yaml
  - name: Run WAF++ PASS
    uses: WAF2p/wafpass-action@v0.1.0
    with:
      server_url: https://wafpass.example.com
      api_key: ${{ secrets.WAFPASS_API_KEY }}
      scan_path: ./infra
      fail_on: high
  ```
  Outputs

  - run_id — UUID of the created run on the WAF++ server
  - score — overall compliance score
  - findings_count — number of findings returned by the scan
