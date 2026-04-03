---
title: Copilot Release Notes
date: 2026-04-03 06:20:09 +00:00
tags:
  - github
  - GitHub Actions
draft: false
repo: https://github.com/github/copilot-release-notes
marketplace: https://github.com/marketplace/actions/copilot-release-notes
version: v1.0.1
dependentsNumber: "1"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/github/copilot-release-notes** to version **v1.0.1**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/copilot-release-notes) to find the latest changes.

## Action Summary

The **Copilot Release Notes** GitHub Action automates the generation of structured, human-readable release notes by analyzing pull requests merged between specified git references, leveraging GitHub Copilot's AI capabilities. It simplifies release documentation by extracting insights from PR titles, bodies, labels, and diffs, and provides outputs in both markdown and JSON formats for integration into changelogs, dashboards, or communication tools. Key features include team-customizable formatting, uncertainty flagging for human review, and security-hardening measures.

## What's Changed

### Fixed
- Improved PR discovery for repos using GitHub API strategy

### Documentation
- Added Background and Requirements sections to README
- Updated all references from `desktop/copilot-release-notes` to `github/copilot-release-notes`

### Security
- Resolved 5 Dependabot alerts for handlebars (1 critical, 3 high, 1 low)
- Resolved 1 moderate brace-expansion vulnerability
