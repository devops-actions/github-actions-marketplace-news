---
title: claude-on-call
date: 2025-12-29 21:06:20 +00:00
tags:
  - vignesh07
  - GitHub Actions
draft: false
repo: https://github.com/vignesh07/oncall-agent
marketplace: https://github.com/marketplace/actions/claude-on-call
version: v1.0.0
dependentsNumber: "?"
---


Version updated for **https://github.com/vignesh07/oncall-agent** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/claude-on-call) to find the latest changes.

## Action Summary

The **oncall-agent** GitHub Action automates the response to production alerts by integrating with monitoring tools like PagerDuty, Datadog, and Prometheus. It parses alerts, deduplicates them, creates GitHub issues to track incidents, analyzes code using AI (Claude Code), and proposes solutions by either opening pull requests with fixes or providing analysis. Additionally, it integrates with PR reviews, runs tests to validate changes, and updates the source alerting system, streamlining on-call workflows and reducing manual intervention during incidents.

## Release notes

 🚀 v1.0.0 - Initial Release

  claude-on-call - AI-powered on-call agent that responds to production alerts with analysis and fixes.

  Features

  - Multi-source alert parsing - PagerDuty, Datadog, CloudWatch, Sentry, Opsgenie, Prometheus, and generic JSON
  - Automatic fixes - Claude analyzes your codebase and creates PRs with fixes
  - Test integration - Run tests after fixes to verify they work
  - PR review mode - Mention @oncall-agent in PR comments to request changes
  - Slack notifications - Get notified when oncall-agent responds
  - Deduplication - Prevents duplicate issues for similar alerts
  - Safety first - Never auto-merges, configurable protected paths

  Quick Start

  curl -fsSL https://raw.githubusercontent.com/vignesh07/oncall-agent/main/setup.sh | bash

  Or add manually:

  - uses: vignesh07/oncall-agent@v1
    with:
      anthropic_api_key: ${{ secrets.ANTHROPIC_API_KEY }}
      alert_payload: ${{ toJson(github.event.client_payload) }}
      alert_source: pagerduty
      test_command: 'npm test'

  Documentation

  - https://github.com/vignesh07/oncall-agent#readme - Full documentation
  - https://github.com/vignesh07/oncall-agent/tree/main/examples/webhook-setup - PagerDuty, Datadog, CloudWatch
  - https://github.com/vignesh07/oncall-agent/tree/main/examples/workflows

  Requirements

  - Anthropic API key (https://console.anthropic.com)
  - Webhook forwarder (Cloudflare Worker or Lambda - https://github.com/vignesh07/oncall-agent/tree/main/examples/webhook-setup)
