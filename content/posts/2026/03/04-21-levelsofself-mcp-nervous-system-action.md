---
title: Nervous System Check
date: 2026-03-04 21:27:59 +00:00
tags:
  - levelsofself
  - GitHub Actions
draft: false
repo: https://github.com/levelsofself/mcp-nervous-system-action
marketplace: https://github.com/marketplace/actions/nervous-system-check
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/levelsofself/mcp-nervous-system-action** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/nervous-system-check) to find the latest changes.

## Action Summary

The **Nervous System Check** GitHub Action enforces governance rules in CI pipelines by scanning pull requests for modifications to a configurable list of protected files. It automates the detection of unauthorized changes, failing the check and posting detailed violation reports as PR comments when protected files are altered. This ensures compliance with repository policies and safeguards critical files from unintended modifications.

## Release notes

## Nervous System Check - GitHub Action v1.0.0

Initial release of the Nervous System governance check for CI pipelines.

### Features
- Scans PR changed files against a configurable protected files list
- Supports inline `protected-files` input (comma-separated) and file-based config (`.nervous-system/protected.txt`)
- Posts or updates a detailed comment on the PR with audit results
- Configurable `fail-on-violation` to block or warn
- Outputs `violations` count and full `report` text for downstream steps

### Usage
```yaml
- uses: levelsofself/mcp-nervous-system-action@v1
  with:
    protected-files: 'CLAUDE.md,.claude/settings.json'
```

### Note
To publish this action to the GitHub Marketplace, go to this release on GitHub and check "Publish this Action to the GitHub Marketplace".
