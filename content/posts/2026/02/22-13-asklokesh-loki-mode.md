---
title: Loki Mode Code Review
date: 2026-02-22 13:24:48 +00:00
tags:
  - asklokesh
  - GitHub Actions
draft: false
repo: https://github.com/asklokesh/loki-mode
marketplace: https://github.com/marketplace/actions/loki-mode-code-review
version: v5.52.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/asklokesh/loki-mode** to version **v5.52.1**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/loki-mode-code-review) to find the latest changes.

## Action Summary

Loki Mode is an autonomous multi-agent development system that converts a Product Requirements Document (PRD) into a fully built, tested, and deployed product with minimal human intervention. It automates the software development lifecycle, including coding, testing, and deployment, while allowing human oversight for critical decisions like deployment credentials and domain setup. Key capabilities include multi-provider support, parallel agent execution, quality assurance checks, and benchmarking tools for evaluation.

## Release notes


### Fixed
- Dashboard secrets.py naming collision (renamed to app_secrets.py, unblocked 7 capabilities)
- TypeScript SDK build step (added tsc, compiled dist/)
- MCP server enterprise tools (added 5 enterprise tools, 15 total)
- Shell test failures (fork bomb detection, JSON spacing, macOS grep compat)
- pytest timezone assertion (accepts both Z and +00:00 UTC formats)


