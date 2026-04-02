---
title: Harnest Canary
date: 2026-04-02 21:56:38 +00:00
tags:
  - gioperalto
  - GitHub Actions
draft: false
repo: https://github.com/gioperalto/canary
marketplace: https://github.com/marketplace/actions/harnest-canary
version: v0.1.1-alpha
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/gioperalto/canary** to version **v0.1.1-alpha**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/harnest-canary) to find the latest changes.

## Action Summary

Canary is a GitHub Action and CLI tool designed to validate harnest chick directories by automating a comprehensive 6-checkpoint QA process. It checks file structure, YAML schemas, agent frontmatter, documentation sections, naming conventions, and cross-references, providing a pass/fail report. Additionally, it supports optional telemetry health checks for Jaeger and Datadog, streamlining quality assurance and ensuring compliance in repositories hosting harnest chicks.

## What's Changed

- Fix Checkpoint 1 to look for claude/ instead of .claude/ in chick dirs (fdc345a)
- Add README, reusable GitHub Action, and dogfood workflow (c530923)
- Add composable canary validator CLI and GitHub Actions workflow (eff7085)
- Initial commit (963e769)
