---
title: Runner Guard
date: 2026-04-08 06:21:21 +00:00
tags:
  - Vigilant-LLC
  - GitHub Actions
draft: false
repo: https://github.com/Vigilant-LLC/runner-guard
marketplace: https://github.com/marketplace/actions/runner-guard
version: v3.0.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/Vigilant-LLC/runner-guard** to version **v3.0.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/runner-guard) to find the latest changes.

## Action Summary

Runner Guard is a CI/CD supply chain security scanner designed for GitHub Actions workflows. It automates the detection and remediation of vulnerabilities such as pipeline injection, unpinned dependencies, AI configuration poisoning, and supply chain attacks, while also auditing upstream dependencies for security. Key capabilities include multi-repo parallel scanning, compromised package detection, auto-fixes, and integration with alerting systems for continuous monitoring.

## What's Changed

## What's New

### Docker Image
```bash
docker pull ghcr.io/vigilant-llc/runner-guard:3.0.1

# Scan a local repo
docker run -v $(pwd):/app ghcr.io/vigilant-llc/runner-guard scan /app

# Monitor with Slack alerts
docker run -e RUNNER_GUARD_WEBHOOK_URL=https://hooks.slack.com/... \
  -v $(pwd):/app ghcr.io/vigilant-llc/runner-guard monitor /app --alert slack

# Monitor with PagerDuty
docker run -e RUNNER_GUARD_PAGERDUTY_KEY=R012345... \
  -v $(pwd):/app ghcr.io/vigilant-llc/runner-guard monitor /app --alert pagerduty
```

10.4MB distroless image. Zero OS packages. All commands supported.

### PagerDuty Events API v2 Integration
New alert mode `--alert pagerduty` for the monitor command. Reads routing key from `RUNNER_GUARD_PAGERDUTY_KEY` env var. Each alert is sent as a PagerDuty event with proper severity mapping, dedup key, and custom details.

### Alert Modes
- `console` (default) — always prints to stdout/logs
- `slack` — Slack webhook via `--webhook-url` or `RUNNER_GUARD_WEBHOOK_URL`
- `webhook` — generic JSON POST to any HTTP endpoint
- `pagerduty` — PagerDuty Events API v2 via `RUNNER_GUARD_PAGERDUTY_KEY`

### Full Changelog
https://github.com/Vigilant-LLC/runner-guard/compare/v3.0.0...v3.0.1
