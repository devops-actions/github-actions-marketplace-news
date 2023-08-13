---
title: ghast-scanner
date: 2023-08-13 19:02:41 +00:00
tags:
  - bin3xish477
  - GitHub Actions
draft: false
repo: bin3xish477/ghast
marketplace: https://github.com/marketplace/actions/ghast-scanner
version: v1.8.8
dependentsNumber: 2
---


Version updated for **bin3xish477/ghast** to version **v1.8.8**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **2** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ghast-scanner) to find the latest changes.

## Release notes

Adds two new auxiliary checks:
1. `check_for_missing_gitignore_file` - checks for missing `.gitignore` file in root of repository which could lead to accidentally committing sensitive folders/files to repository.
2. `check_for_missing_dockerignore_file` - checks for missing `.dockerignore` file in root of repository which could lead to accidentally committing sensitive folders/files into your containerized applications.
