---
title: Copilot Release Notes
date: 2026-04-02 06:34:07 +00:00
tags:
  - github
  - GitHub Actions
draft: false
repo: https://github.com/github/copilot-release-notes
marketplace: https://github.com/marketplace/actions/copilot-release-notes
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/github/copilot-release-notes** to version **v1.0.0**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/copilot-release-notes) to find the latest changes.

## Action Summary

The "Copilot Release Notes" GitHub Action automates the generation of structured, human-readable release notes by analyzing pull requests merged between two specified git references. Leveraging GitHub Copilot's AI capabilities, it extracts relevant information from PR titles, bodies, labels, and diffs, while offering team-customizable formatting and output in both markdown and JSON. This action streamlines release note creation, enhances accuracy, and flags uncertain entries for manual review, solving the challenge of maintaining consistent and comprehensive release documentation.

## What's Changed

## Copilot Release Notes v1.0.0

AI-powered release notes generation from pull requests between two git refs, using GitHub Copilot CLI.

### Features

- **Zero configuration** — works out of the box with sensible defaults
- **Team-customizable** — drop a style guide at `.github/release-notes-instructions.md` and the action follows your conventions
- **Structured output** — markdown and JSON outputs for releases, changelogs, Slack, or dashboards
- **Uncertainty flagging** — entries the AI isn't confident about are separated for human review

### Usage

```yaml
- name: Generate release notes
  uses: github/copilot-release-notes@v1
  with:
    base-ref: v1.0.0
    head-ref: v1.1.0
  env:
    COPILOT_GITHUB_TOKEN: ${{ secrets.COPILOT_GITHUB_TOKEN }}
```

See the [README](https://github.com/github/copilot-release-notes#readme) for full documentation.
