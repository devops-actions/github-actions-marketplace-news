---
title: Fresh Jots — Append
date: 2026-05-03 13:54:35 +00:00
tags:
  - Goran-Arsov
  - GitHub Actions
draft: false
repo: https://github.com/Goran-Arsov/freshjots-append
marketplace: https://github.com/marketplace/actions/fresh-jots-append
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Goran-Arsov/freshjots-append** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fresh-jots-append) to find the latest changes.

## Action Summary

The `freshjots-append` GitHub Action automates the process of appending log entries from workflow runs to a Fresh Jots notebook. It simplifies tracking and monitoring by creating or updating a specified notebook with custom text, enabling users to maintain an accessible history of workflow events. Additionally, it provides a "dead-man's-switch" functionality to alert users via email if scheduled workflows fail to execute within a specified timeframe.

## What's Changed

First public release of the **freshjots-append** GitHub Action — append a line to a [Fresh Jots](https://freshjots.com) notebook from any workflow with one declarative step.

```yaml
- uses: Goran-Arsov/freshjots-append@v1
  with:
    note: deploys-prod
    text: "deployed ${{ github.sha }} (${{ job.status }})"
  env:
    FRESHJOTS_TOKEN: ${{ secrets.FRESHJOTS_TOKEN }}
```

## What's included

- Composite action — instant cold start, runs on Linux / macOS / Windows GH-hosted runners.
- Optional `append-deadline-hours` input — turns any scheduled workflow into its own dead-man's-switch.
- Token via `FRESHJOTS_TOKEN` env (never as a `with:` input — keeps the secret out of workflow YAML).
- MIT-licensed.

## Versioning

Pin to `@v1` for non-breaking 1.x updates, or `@v1.0.0` for full reproducibility.

See the [README](https://github.com/Goran-Arsov/freshjots-append#readme) for inputs, outputs, and examples.
