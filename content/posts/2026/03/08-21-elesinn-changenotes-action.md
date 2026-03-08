---
title: Changenotes Changelog Generator
date: 2026-03-08 21:22:40 +00:00
tags:
  - elesinn
  - GitHub Actions
draft: false
repo: https://github.com/elesinn/changenotes-action
marketplace: https://github.com/marketplace/actions/changenotes-changelog-generator
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/elesinn/changenotes-action** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/changenotes-changelog-generator) to find the latest changes.

## Action Summary

The Changenotes GitHub Action automates the generation of AI-powered changelogs for GitHub releases. It parses commits and pull requests since the last tag to create and update release notes with a well-formatted changelog. This action simplifies release management by eliminating the need for manual changelog creation and ensuring consistent, professional release documentation.

## Release notes

## Changenotes GitHub Action v1.0.0

Generate AI-powered changelogs on every release — automatically update your GitHub release notes with a beautifully formatted changelog.

### Quick Start

1. Get an API key at [changenotes.app/settings](https://changenotes.app/settings)
2. Add the secret `CHANGENOTES_API_KEY` to your repository
3. Add this workflow:

```yaml
# .github/workflows/changelog.yml
name: Generate Changelog

on:
  release:
    types: [published]

jobs:
  changelog:
    runs-on: ubuntu-latest
    permissions:
      contents: write
    steps:
      - uses: elesinn/changenotes-action@v1
        with:
          changenotes-api-key: ${{ secrets.CHANGENOTES_API_KEY }}
```

### What's included
- Trigger on `release`, `push` (tag refs), or `create` (tag type) events
- AI-generated structured changelogs from commits and PRs
- Automatic GitHub release body update
- `changelog`, `tag`, and `previous-tag` outputs for downstream steps
