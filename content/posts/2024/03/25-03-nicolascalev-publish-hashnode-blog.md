---
title: Publish blogs to Hashnode from your GitHub projects
date: 2024-03-25 03:20:25 +00:00
tags:
  - nicolascalev
  - GitHub Actions
draft: false
repo: nicolascalev/publish-hashnode-blog
marketplace: https://github.com/marketplace/actions/publish-blogs-to-hashnode-from-your-github-projects
version: v1.2
dependentsNumber: "?"
---


Version updated for **nicolascalev/publish-hashnode-blog** to version **v1.2**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/publish-blogs-to-hashnode-from-your-github-projects) to find the latest changes.

## Release notes

## Minor changes:

- Use actions/checkout with `fetch-depth: 2` to get the last commit. Instead of getting the whole commit history.
- Use `git show --pretty=format: --name-only` to log only the file paths and not the whole commit information.
