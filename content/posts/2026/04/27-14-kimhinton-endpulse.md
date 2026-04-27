---
title: Endpulse Health Check
date: 2026-04-27 14:35:56 +00:00
tags:
  - kimhinton
  - GitHub Actions
draft: false
repo: https://github.com/kimhinton/endpulse
marketplace: https://github.com/marketplace/actions/endpulse-health-check
version: v0.3.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/kimhinton/endpulse** to version **v0.3.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/endpulse-health-check) to find the latest changes.

## Action Summary

**endpulse** is a command-line tool for performing health checks on multiple API endpoints simultaneously. It automates tasks like verifying response status, monitoring SSL certificate expiry, asserting response content, and generating alerts for failures. Designed for CI/CD and lightweight monitoring, it provides capabilities such as live terminal updates, YAML-based configuration, webhook notifications, and formatted output, offering a convenient alternative to heavier monitoring tools or manual checks.

## What's Changed

## What's New

### SSL Certificate Monitoring
Check SSL certificate expiry alongside health checks with `--ssl`. Certificates expiring within 14 days are flagged.

```bash
endpulse https://api.example.com --ssl
```

### Webhook Notifications
Get alerted on failures via Slack, Discord, or any generic webhook:

```bash
endpulse -c endpoints.yaml --notify https://hooks.slack.com/services/T00/B00/xxx
```

Auto-detects webhook type from URL. Configure in YAML with `notify:` key.

### Multiple Output Formats
Export results as Markdown (for GitHub Actions summaries) or CSV:

```bash
endpulse -c endpoints.yaml --output markdown >> $GITHUB_STEP_SUMMARY
endpulse -c endpoints.yaml --output csv > results.csv
```

### Config Generator
Bootstrap a starter `endpoints.yaml` with one command:

```bash
endpulse --init
```

### Full Changelog
- SSL certificate expiry checking (`--ssl`)
- Webhook notifications: Slack, Discord, generic (`--notify`)
- Output formats: table, JSON, Markdown, CSV (`--output`)
- Config template generator (`--init`)
- YAML `notify:` key for webhook config
- README rewrite with feature comparison and CI/CD examples
- 47 tests, strict mypy, ruff clean
