---
title: AI Surface Check
date: 2026-06-18 07:01:40 +00:00
tags:
  - apisec-inc
  - GitHub Actions
draft: false
repo: https://github.com/apisec-inc/AI-Surface
marketplace: https://github.com/marketplace/actions/ai-surface-check
version: v1.0.2
dependentsNumber: "0"
actionType: Docker
---


Version updated for **https://github.com/apisec-inc/AI-Surface** to version **v1.0.2**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-surface-check) to find the latest changes.

## What's Changed

**ai-surface** maps the AI attack surface in your codebase — LLM calls, agents, MCP servers, RAG/vector stores, model gateways, provider  keys, and the HTTP APIs that expose them. It generates an AI-BOM, maps findings to OWASP LLM Top 10 / EU AI Act / NIST / ISO, and gates new high-risk findings at PR time. Local, offline, no telemetry, no credentials.

  ### Use it in CI
  
  ```yaml
  - uses: actions/checkout@v4
    with:
      fetch-depth: 0          # required for base-vs-head diff
  - uses: apisec-inc/AI-Surface@v1
    with:
      comment-on-pr: 'true'
      fail-on: 'high'         # fail only on NEW high/critical findings
  ```
Posts a sticky PR comment showing what the PR changed, and fails the build only on newly introduced high-or-critical findings. Uses the built-in `GITHUB_TOKEN` — no API keys.

### This release (1.0.2)

Maintenance: widened `rich` (`<16`) and `pathspec` (`<2.0`) dependency bounds so installs aren't pinned to old majors. No functional changes.  

Full changelog: https://github.com/apisec-inc/AI-Surface/blob/main/CHANGELOG.md
