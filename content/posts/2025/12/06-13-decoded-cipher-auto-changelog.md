---
title: AI Changelog (GitHub Models)
date: 2025-12-06 13:01:17 +00:00
tags:
  - decoded-cipher
  - GitHub Actions
draft: false
repo: https://github.com/decoded-cipher/auto-changelog
marketplace: https://github.com/marketplace/actions/ai-changelog-github-models
version: v1.0.0
dependentsNumber: "?"
---


Version updated for **https://github.com/decoded-cipher/auto-changelog** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-changelog-github-models) to find the latest changes.

## Release notes

# AI Changelog (GitHub Models)

First release of the AI Changelog generator! 🚀

## Features
- 📝 Generates human-friendly changelogs from git history
- 🤖 Uses GitHub Models (default: `gpt-4o-mini`)
- 🔑 No external API keys required (uses `GITHUB_TOKEN`)
- 📂 Customizable output path and git range

## Usage
```yaml
- uses: decoded-cipher/auto-changelog@v1.0.0
  with:
    output_path: 'CHANGELOG.md'
