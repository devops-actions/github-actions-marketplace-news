---
title: EvalView - AI Agent Testing
date: 2026-05-15 22:13:10 +00:00
tags:
  - hidai25
  - GitHub Actions
draft: false
repo: https://github.com/hidai25/eval-view
marketplace: https://github.com/marketplace/actions/evalview-ai-agent-testing
version: v0.8.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/hidai25/eval-view** to version **v0.8.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/evalview-ai-agent-testing) to find the latest changes.

## Action Summary

EvalView is an open-source GitHub Action designed to detect and manage behavioral regressions in AI agents, including tool-calling and multi-turn interactions. It automates regression detection by identifying output drift, tracking changes in models or tools, and classifying regressions with graded confidence rather than binary results. By enabling deterministic testing, auto-healing of flaky failures, and streamlined review workflows, EvalView ensures AI agents maintain consistent behavior and helps teams prevent silent regressions before they impact users.

## What's Changed

Bump to 0.8.0. See [CHANGELOG.md](./CHANGELOG.md#080---2026-05-15) for the full entry.

Headline features since 0.7.1:
- Record/replay cassettes for `evalview simulate` (#228)
- `--schedule` cron syntax for `evalview monitor` (#224)
