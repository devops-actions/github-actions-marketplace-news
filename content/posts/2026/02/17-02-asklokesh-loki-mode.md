---
title: Loki Mode Code Review
date: 2026-02-17 02:57:03 +00:00
tags:
  - asklokesh
  - GitHub Actions
draft: false
repo: https://github.com/asklokesh/loki-mode
marketplace: https://github.com/marketplace/actions/loki-mode-code-review
version: v5.48.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/asklokesh/loki-mode** to version **v5.48.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/loki-mode-code-review) to find the latest changes.

## Action Summary

Loki Mode is an advanced GitHub Action and CLI tool designed to autonomously transform Product Requirements Documents (PRDs) into fully functional, tested, and deployed products without any human intervention. It automates tasks such as code generation, testing, quality assurance, and deployment, streamlining the software development lifecycle. Key capabilities include automated code review, bug fixing, and testing using AI-powered agents, with support for multiple AI providers and budget constraints.

## Release notes


### Fixed
- Critical: VSCode extension API endpoint paths corrected (/api/control/* instead of /start, /stop, /pause, /resume)
- Critical: VSCode health check now matches server response ("healthy" not "ok")
- Critical: VSCode response type schemas aligned with server (success/message pattern)
- Critical: JSON backslash escaping in run.sh emit_event and emit_event_json
- Critical: PRD_PATH properly escaped in save_state JSON generation
- Critical: Dashboard server safe int() env var parsing prevents crash on invalid values
- High: Auth added to 5 unprotected write endpoints in dashboard API (projects, tasks, registry)
- High: Convergence log parsing now resilient to malformed lines (per-line try/except)
- High: Bounded events.jsonl read with 10MB cap in trigger_aggregation
- High: Memory retrieval dict mutation fixed with shallow copy (prevents storage pollution)
- High: Atomic writes for token_economics.py (temp file + rename)
- High: Memory counter inflation fixed (only increments for new topics, not upserts)
- High: Atomic writes for agents.json state file in run.sh
- High: loki status --json flag now functional (was silently ignored)
- High: PYTHONPATH added to loki api start command
- High: VSCode apiClient recreated on host/port config change
- Medium: Provider wrapper fails explicitly when loader.sh missing (was silent Claude fallback)
- Medium: Docker credential mount paths corrected (/home/loki/ not /root/) in README and wiki
- Medium: npm test file leak prevention (*_test.ts/*_test.js patterns added to .npmignore)
- Medium: Visibility-aware polling for cost dashboard and context tracker components
- Medium: Memory embedding cache bounded at 10K entries with LRU eviction
- Medium: VSCode VERSION file synced to current version


