---
title: EvalView - AI Agent Testing
date: 2026-03-12 21:40:02 +00:00
tags:
  - hidai25
  - GitHub Actions
draft: false
repo: https://github.com/hidai25/eval-view
marketplace: https://github.com/marketplace/actions/evalview-ai-agent-testing
version: v0.5.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/hidai25/eval-view** to version **v0.5.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/evalview-ai-agent-testing) to find the latest changes.

## Action Summary

EvalView is a GitHub Action designed for regression testing of AI agents by automating the process of detecting behavioral changes and preventing regressions in continuous integration (CI) pipelines. It captures and snapshots the agent's API behavior, including tool calls, sequences, parameters, outputs, costs, and latencies, creating a golden baseline for comparisons. The action offers multiple layers of evaluation, from free offline checks to advanced semantic and quality-based scoring using AI models, ensuring robust and cost-effective testing.

## Release notes

## What's New

### Production Monitoring (`evalview monitor`)
- **Continuous regression detection** — runs `evalview check` in a loop with configurable interval (default: 5 min)
- **Slack alerts** — webhook notifications on new regressions, recovery notifications when resolved
- **Smart dedup** — only alerts on NEW failures, no re-alerts on persistent issues
- **JSONL history export** — `--history monitor.jsonl` appends cycle data for trend analysis and dashboards
- **Graceful shutdown** — Ctrl+C stops cleanly with cost summary
- **Config support** — CLI flags, `config.yaml`, or `EVALVIEW_SLACK_WEBHOOK` env var

```bash
evalview monitor                                         # Check every 5 min
evalview monitor --interval 60                           # Every minute
evalview monitor --slack-webhook https://hooks.slack.com/services/...
evalview monitor --history monitor.jsonl                 # Save trends
```

### Community Contributions
- **CSV export** — `evalview check --csv results.csv` (@muhammadrashid4587)
- **Timeout flag** — `evalview check --timeout 60` (@zamadye)
- **Better errors** — human-friendly connection failure messages (@passionworkeer)
- **JSONL history** — `--history` flag for monitor (@clawtom)

### Bug Fixes & Refactoring
- Fixed severity comparison bug (was using string matching instead of enum comparison)
- Fixed JSONL history pass count (was using fail_on filter instead of actual counts)
- Extracted shared `_parse_fail_statuses` utility for consistent fail_on parsing
- Eliminated redundant config loading in monitor loop

### Deployment

```bash
# Quick background run
nohup evalview monitor --slack-webhook https://... &

# Docker
docker run -d -v $(pwd):/app -w /app evalview monitor --slack-webhook https://...
```

---

**Full Changelog**: https://github.com/hidai25/eval-view/compare/v0.4.1...v0.5.0
