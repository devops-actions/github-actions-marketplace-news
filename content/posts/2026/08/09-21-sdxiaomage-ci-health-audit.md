---
title: CI Health Audit
date: 2026-08-09 21:56:19 +00:00
tags:
  - sdxiaomage
  - GitHub Actions
draft: false
repo: https://github.com/sdxiaomage/ci-health-audit
marketplace: https://github.com/marketplace/actions/ci-health-audit
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action scans GitHub Actions workflows for common security and reliability risks such as untrusted pull-request head checkout, lack of permissions, missing timeouts, and attacker-controlled event fields. It produces a report in Markdown or JSON format and can fail the CI build at a chosen severity threshold. The audit is run locally on the runner without uploading workflow files to an external service.
---


Version updated for **https://github.com/sdxiaomage/ci-health-audit** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ci-health-audit) to find the latest changes.

## Action Summary

This GitHub Action scans GitHub Actions workflows for common security and reliability risks such as untrusted pull-request head checkout, lack of permissions, missing timeouts, and attacker-controlled event fields. It produces a report in Markdown or JSON format and can fail the CI build at a chosen severity threshold. The audit is run locally on the runner without uploading workflow files to an external service.

## What's Changed

First public release. Zero-dependency GitHub Actions audit with eight high-confidence heuristic checks, Markdown/JSON output, and configurable failure thresholds.
