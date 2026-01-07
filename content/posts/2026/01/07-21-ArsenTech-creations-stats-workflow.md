---
title: Creations Stats
date: 2026-01-07 21:25:10 +00:00
tags:
  - ArsenTech
  - GitHub Actions
draft: false
repo: https://github.com/ArsenTech/creations-stats-workflow
marketplace: https://github.com/marketplace/actions/creations-stats
version: v1.0.2
dependentsNumber: "?"
---


Version updated for **https://github.com/ArsenTech/creations-stats-workflow** to version **v1.0.2**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/creations-stats) to find the latest changes.

## Action Summary

The **Creations Stats** GitHub Action automates the generation of portfolio stats by retrieving and displaying details about a user's repositories and Gists, with customizable options for exclusion and design. It is designed to streamline the process of enhancing GitHub profile READMEs by showcasing selected creations in a clean and visually appealing format. This action solves the problem of manually curating and updating repository information, making it ideal for dynamic profile customization.

## Release notes

> [!IMPORTANT]
> This feature is a breaking change, which means some gists can be fetched only by using a separate comment tag
### Added
- `repo-tag-name` option
- `gist-tag-name` option
### Improved
- The Repoistories and gists fetch feature unifying into 1 logic (inside thr `try...catch` block)
- The Section placement feature
### Removed
- `include-gists` option
- `comment-tag-name` option
- Titles after generating content (like `#### Repositories` or `#### Gists`)

### Full Changelog: [`creations-stats-workflow/CHANGELOG.md`](https://github.com/ArsenTech/creations-stats-workflow/blob/main/CHANGELOG.md)
