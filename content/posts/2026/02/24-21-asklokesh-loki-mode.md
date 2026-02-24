---
title: Loki Mode Code Review
date: 2026-02-24 21:42:37 +00:00
tags:
  - asklokesh
  - GitHub Actions
draft: false
repo: https://github.com/asklokesh/loki-mode
marketplace: https://github.com/marketplace/actions/loki-mode-code-review
version: v5.56.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/asklokesh/loki-mode** to version **v5.56.1**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/loki-mode-code-review) to find the latest changes.

## Action Summary

Loki Mode is an autonomous multi-agent system designed to transform a Product Requirements Document (PRD) into built and tested source code, leveraging 41 specialized agent types working in parallel across various domains. It automates the software development lifecycle, including coding, testing, and configuration generation, while ensuring quality through continuous self-verification via its iterative Reason-Act-Reflect-Verify (RARV) cycle. This tool accelerates development for projects ranging from simple applications to complex systems, reducing manual effort while requiring human oversight for deployment and critical decision-making.

## Release notes


### Fixed
- App Runner: port detection broken on macOS BSD sed, replaced with grep/cut pipeline
- App Runner: docker compose up -d PID tracking fundamentally broken, added container-aware health checks
- App Runner: port field in detection.json/state.json could contain raw YAML garbage, added numeric validation
- Dashboard: uptime showed stale values when app status was stopped/failed


