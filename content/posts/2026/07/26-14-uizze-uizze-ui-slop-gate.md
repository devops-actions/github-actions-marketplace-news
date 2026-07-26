---
title: UIZZE UI Slop Gate
date: 2026-07-26 14:33:58 +00:00
tags:
  - uizze
  - GitHub Actions
draft: false
repo: https://github.com/uizze/uizze-ui-slop-gate
marketplace: https://github.com/marketplace/actions/uizze-ui-slop-gate
version: v1.0.9
dependentsNumber: "2"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action checks UI consistency by analyzing changed frontend code files to identify potential UI slop issues. It ensures that the app remains visually distinct and free from common pitfalls such as placeholder controls, data-driven UI without loading indicators, hardcoded colors, and generic dashboard patterns. The action runs entirely within a job, ensuring no sensitive information leaves the runner. It provides actionable feedback in workflow annotations and is designed to be integrated into pull request workflows for continuous improvement.
---


Version updated for **https://github.com/uizze/uizze-ui-slop-gate** to version **v1.0.9**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/uizze-ui-slop-gate) to find the latest changes.

## Action Summary

This GitHub Action checks UI consistency by analyzing changed frontend code files to identify potential UI slop issues. It ensures that the app remains visually distinct and free from common pitfalls such as placeholder controls, data-driven UI without loading indicators, hardcoded colors, and generic dashboard patterns. The action runs entirely within a job, ensuring no sensitive information leaves the runner. It provides actionable feedback in workflow annotations and is designed to be integrated into pull request workflows for continuous improvement.

## What's Changed

Adds an optional, evidence-first handoff from real UI Slop Gate findings to the recorded same-prompt case. The free local visual check and no-token MCP preview remain the primary next steps; the recorded case is explicitly not a benchmark or quality guarantee.
