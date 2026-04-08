---
title: Ghost Supply Chain Scan
date: 2026-04-08 22:07:44 +00:00
tags:
  - vaulpann
  - GitHub Actions
draft: false
repo: https://github.com/vaulpann/ghost-action
marketplace: https://github.com/marketplace/actions/ghost-supply-chain-scan
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/vaulpann/ghost-action** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ghost-supply-chain-scan) to find the latest changes.

## Action Summary

The **Ghost Supply Chain Scan** GitHub Action automates the review of new and updated npm and Python dependencies in pull requests. It detects changes in dependency files, analyzes the security and integrity of updated packages, and posts a concise summary to the pull request, highlighting potential risks and blocking updates that exceed a configurable severity threshold. This action helps teams proactively manage supply chain risks and streamline dependency review processes.

## What's Changed

Initial public release of Ghost Supply Chain Scan.

  ## What it does

  - Detects new and updated dependencies in pull requests
  - Supports npm and Python dependency files
  - Analyzes new packages by pulling source code
  - Analyzes updates by diffing previous and new package versions
  - Posts a per-package PR summary with risk analysis
  - Fails CI when findings meet the configured severity threshold

  ## Supported files

  - package-lock.json
  - yarn.lock
  - pnpm-lock.yaml
  - requirements.txt
  - Pipfile.lock
  - poetry.lock

  ## Example usage

  ```yaml
  - uses: vaulpann/ghost-action@v1
    with:
      fail-on: high

