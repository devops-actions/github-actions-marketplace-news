---
title: VertaaUX Audit
date: 2026-04-17 14:10:48 +00:00
tags:
  - VertaaUX
  - GitHub Actions
draft: false
repo: https://github.com/VertaaUX/audit-action
marketplace: https://github.com/marketplace/actions/vertaaux-audit
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/VertaaUX/audit-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vertaaux-audit) to find the latest changes.

## Action Summary

The **VertaaUX Audit Action** is a GitHub Action designed to automate UX audits directly within CI/CD pipelines by evaluating usability, clarity, and accessibility of deployed URLs. It provides configurable score thresholds, detects issues with severity levels, identifies regressions against baselines, and posts detailed pull request comments summarizing score trends and issues. This action streamlines UX quality assurance by integrating automated audits and actionable insights into the development workflow.

## What's Changed

Initial release of the VertaaUX GitHub Action.

- Run UX, accessibility, and clarity audits in CI/CD pipelines
- Configurable score thresholds and per-category minimums
- PR comments with score trends and regression detection
- Uses latest @vertaaux/cli from npm (0.6.0+)

## Usage

```yaml
- uses: vertaaux/audit-action@v1
  with:
    url: https://example.com
    api-key: ${{ secrets.VERTAAUX_API_KEY }}
```

See the [README](https://github.com/VertaaUX/audit-action#readme) for full configuration options.

Docs: https://vertaaux.ai/docs
