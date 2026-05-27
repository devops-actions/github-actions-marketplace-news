---
title: Trustabl
date: 2026-05-27 06:32:46 +00:00
tags:
  - trustabl
  - GitHub Actions
draft: false
repo: https://github.com/trustabl/actions
marketplace: https://github.com/marketplace/actions/trustabl
version: v0.1.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/trustabl/actions** to version **v0.1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/trustabl) to find the latest changes.

## Action Summary

The "Trustabl Actions" GitHub Action automates static reliability and safety analysis for agent SDK repositories (e.g., Claude, OpenAI, Google ADK, MCP) using the Trustabl tool. It scans the repository for issues, generates detailed JSON and SARIF reports, and provides these as downloadable artifacts. The action also supports configurable thresholds for risk scores and severity levels to automatically pass or fail workflows, helping teams maintain code quality and ensure compliance with reliability standards.

## What's Changed

Patch release. Single bug fix for branch resolution on remote URL targets.
# v0.1.1
## Fixed

- **Branch row showed `unknown` for `https://github.com/OWNER/NAME` targets.** The resolver only inspected local checkouts, so URL-based scans had no signal to read. v0.1.1 calls `gh api repos/OWNER/NAME --jq .default_branch` using the runner's `${{ github.token }}` and shows the remote's default branch — the same one trustabl actually clones and scans.

Local-path targets still prefer `main` → `master` → HEAD. `unknown` remains the documented last-resort.

## Usage

```yaml
name: Trustabl
on: [push, pull_request]

permissions:
  contents: read

jobs:
  scan:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: trustabl/actions@v0.1.1

