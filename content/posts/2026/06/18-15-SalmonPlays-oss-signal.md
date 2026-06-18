---
title: oss-signal
date: 2026-06-18 15:27:23 +00:00
tags:
  - SalmonPlays
  - GitHub Actions
draft: false
repo: https://github.com/SalmonPlays/oss-signal
marketplace: https://github.com/marketplace/actions/oss-signal
version: v0.9.9
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/SalmonPlays/oss-signal** to version **v0.9.9**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/oss-signal) to find the latest changes.

## What's Changed

`oss-signal` v0.9.9 removes the main setup hurdle for a first maintainer trial.

## What Changed

- `npx oss-signal --init` creates a report-only workflow in the current repository.
- The generated workflow runs manually or on pull requests, uploads the Markdown
  report and adoption pack, and does not add a score gate.
- Existing workflow files are never replaced unless `--force` is explicitly used.
- CLI output now creates missing parent directories.

## Try It

```bash
npm exec --yes --package=oss-signal@0.9.9 -- oss-signal --init
```

Review `.github/workflows/oss-signal-trial.yml`, commit it, and run the workflow
manually. No star, endorsement, or adoption claim is requested.

