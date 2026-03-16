---
title: Claude BugBot
date: 2026-03-16 13:45:00 +00:00
tags:
  - rekpero
  - GitHub Actions
draft: false
repo: https://github.com/rekpero/claude-bugbot-github-action
marketplace: https://github.com/marketplace/actions/claude-bugbot
version: v1.0.9
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/rekpero/claude-bugbot-github-action** to version **v1.0.9**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/claude-bugbot) to find the latest changes.

## Action Summary

Claude BugBot is a GitHub Action that automates the detection of bugs, logic errors, and vulnerabilities in pull requests by leveraging the Claude Code CLI. It analyzes PR diffs, provides inline review comments on problematic lines, and offers a free alternative to Cursor BugBot for users with existing Claude Pro or Max subscriptions. This action eliminates the need for additional subscriptions or middleware, providing a fast and cost-effective solution for automated code reviews.

## Release notes

### Changed

- **`.github/` directory excluded from bug analysis** — Files under `.github/` (GitHub Actions workflows, configs, etc.) are now stripped from the diff before BugBot analyzes it. These are infrastructure files, not application code, and flagging bugs in them is noise. Exclusions are driven by a top-level `EXCLUDED_PATH_PREFIXES` list in `analyze.mjs` — add entries there to exclude additional directories as needed.

