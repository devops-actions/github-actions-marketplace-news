---
title: Conventional Commits Auto Version
date: 2026-03-26 06:13:55 +00:00
tags:
  - lucaspretti
  - GitHub Actions
draft: false
repo: https://github.com/lucaspretti/auto-version-action
marketplace: https://github.com/marketplace/actions/conventional-commits-auto-version
version: v1.5.8
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/lucaspretti/auto-version-action** to version **v1.5.8**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/conventional-commits-auto-version) to find the latest changes.

## Action Summary

The **Auto Version Action** is a GitHub Action that automates semantic versioning based on the [Conventional Commits](https://www.conventionalcommits.org/) standard. It calculates version bumps, generates release candidate (RC) tags, creates categorized changelogs, and synchronizes staging and production branches. This action simplifies release management by automating version updates and ensuring consistent version control for projects.

## Release notes

## Automated Semantic Versioning for GitHub Actions

Conventional Commits-driven versioning with zero dependencies. Pure bash, works on GitHub.com and GitHub Enterprise Server.

### Features

- Auto-detects version file format (JSON, TOML, YAML, plain text)
- RC pre-releases on staging, final releases on production
- Categorized changelogs (Breaking/Features/Fixes/Maintenance)
- Floating tags (`v1`, `v1.5`) for Actions consumed via `@v1`
- Single-branch and two-branch workflows
- GHES compatible

### Quick Start

```yaml
- uses: lucaspretti/auto-version-action@v1
  with:
    version-file: VERSION
    github-token: ${{ secrets.GITHUB_TOKEN }}
```

See [README](https://github.com/lucaspretti/auto-version-action#readme) for full documentation.

