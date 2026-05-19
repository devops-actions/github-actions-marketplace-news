---
title: OpsPilot Review
date: 2026-05-19 07:20:50 +00:00
tags:
  - SuryaMadireddy1
  - GitHub Actions
draft: false
repo: https://github.com/SuryaMadireddy1/opspilot-action
marketplace: https://github.com/marketplace/actions/opspilot-review
version: v1.3.0
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/SuryaMadireddy1/opspilot-action** to version **v1.3.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/opspilot-review) to find the latest changes.

## Action Summary

OpsPilot is a GitHub Action that integrates Checkov with an LLM to analyze Terraform files in pull requests, providing clear explanations of risks and actionable fixes in plain English. It automates the identification of infrastructure security issues, prioritizes findings by severity, and offers precise code snippets for resolution, streamlining remediation and enhancing security awareness. This action is particularly useful for teams aiming to improve infrastructure security while reducing the complexity of interpreting Checkov results.

## What's Changed

## What's new in v1.3.0

  ### Team policy file (`.opspilot.yml`)
  Define custom rules and check ignore lists at the repo root. OpsPilot appends your rules to the LLM
  system prompt and skips any check IDs in the `ignore` list entirely — no LLM call, no comment.

  ```yaml
  rules:
    - "All RDS instances must have deletion_protection = true"
  ignore:
    - CKV_AWS_144

  Rate limit retry with exponential backoff

  _chat() retries up to 3 times on any 429 / rate-limit error.
  - Parses Groq's "Please try again in Xs" message and waits that duration + 1s
  - Skips the finding (with a warning) if retry-after exceeds 60 seconds
  - Falls back to [5s, 15s, 45s] backoff when no retry-after is available
  - Logs each retry: rate limit hit, waiting Xs before retry N/3

  --max-findings cap (default: 30)

  After diff and ignore filtering, findings are sorted by severity (critical → high → warning → info)
  and truncated to the top N before any LLM calls. Prevents runaway API costs on large PRs.

  Bug fix: Checkov severity filter exclusion

  checkov-severity now defaults to empty. Checkov 3.x sets severity = null on most checks; the
  previous critical|high default silently filtered out all findings. Volume control is now handled by
  --max-findings and LLM-assigned severity instead.

  Upgrade

  - uses: SuryaMadireddy1/opspilot-action@v1.3.0
