---
title: Atlas Portfolio Health
date: 2026-05-20 23:15:11 +00:00
tags:
  - nxtg-ai
  - GitHub Actions
draft: false
repo: https://github.com/nxtg-ai/atlas-action
marketplace: https://github.com/marketplace/actions/atlas-portfolio-health
version: v0.1.3
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/nxtg-ai/atlas-action** to version **v0.1.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/atlas-portfolio-health) to find the latest changes.

## Action Summary

The `atlas-action` GitHub Action automatically generates a comprehensive health report for each pull request, including a portfolio health grade, project-specific metrics, test coverage, and CI gate status. It helps teams monitor project quality, enforce health thresholds, and ensure consistency by automating the assessment of codebase health and providing actionable insights directly within the PR workflow. Key features include configurable health thresholds for CI gating and a dynamically updated sticky PR comment summarizing the analysis.

## What's Changed

## What it does

Atlas scans your repository for tech stack, scores health across multiple dimensions (test coverage, dependency hygiene, build quality, documentation), and posts a sticky PR comment with findings. Fails the build if the health score drops below your threshold.

Built for portfolio teams managing multiple repos — designed to detect drift before it ships.

## Install

```yaml
  - uses: nxtg-ai/atlas-action@v0.1.2
    with:
      min-health: 70           # Fail if portfolio health < 70%
      min-project-health: 50   # Fail if any project < 50%
```

## What's new in v0.1.2

  - Clean PyPI install path (`nxtg-atlas==0.3.0`) — no git fallback
  - Repository rename: nxtg-ai/repoatlas → nxtg-ai/nxtg-atlas (auto-redirect)
  - ADR-021 release-protocol-compliant tag + CHANGELOG

## How it works

  1. Action runs in your CI workflow
  2. Installs `nxtg-atlas` Python CLI (v0.3.0)
  3. Scans repo + computes health score
  4. Posts sticky PR comment with findings (single comment, updated on each push)
  5. Action exits 0 (pass) or non-zero (fail) based on thresholds

<img width="458" height="242" alt="atlas-action" src="https://github.com/user-attachments/assets/a300e6da-51e3-4d14-acfe-8ba1cf38bf2b" />

## Powered by

[`nxtg-atlas`](https://pypi.org/project/nxtg-atlas/) — open-source Python CLI, MIT-licensed.
