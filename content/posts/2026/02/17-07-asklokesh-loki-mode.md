---
title: Loki Mode Code Review
date: 2026-02-17 07:38:10 +00:00
tags:
  - asklokesh
  - GitHub Actions
draft: false
repo: https://github.com/asklokesh/loki-mode
marketplace: https://github.com/marketplace/actions/loki-mode-code-review
version: v5.48.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/asklokesh/loki-mode** to version **v5.48.1**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/loki-mode-code-review) to find the latest changes.

## Action Summary

Loki Mode is an autonomous multi-agent system that transforms Product Requirements Documents (PRDs) into fully developed, tested, and deployed revenue-generating products without human intervention. It automates the entire software development lifecycle, including code generation, quality assurance, and deployment. Key capabilities include support for automated AI-driven code reviews, bug fixes, and testing in pull requests, leveraging AI providers like Claude, Codex, and Gemini.

## Release notes


### Fixed
- Dashboard server auto-installs Python dependencies (fastapi/uvicorn/pydantic/websockets) before starting
- Fixes ModuleNotFoundError on fresh npm/Homebrew installations where FastAPI is not pre-installed
- Applied to all entry points: run.sh start_dashboard, loki dashboard start, loki api start, loki serve


