---
title: Create Pull Request automatically
date: 2024-02-26 19:24:46 +00:00
tags:
  - rodrigoarias
  - GitHub Actions
draft: false
repo: rodrigoarias/auto-pullrequest
marketplace: https://github.com/marketplace/actions/create-pull-request-automatically
version: v1.0.0
dependentsNumber: "?"
---


Version updated for **rodrigoarias/auto-pullrequest** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/create-pull-request-automatically) to find the latest changes.

## Release notes

First release.

Usage:
 ```
on:
  push:
    branches:
      - 'hotfix/*'
jobs:
  create_pull_request:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout code
        uses: actions/checkout@v2

      - name: Alert main of changes in hotfix
        uses: rodrigoarias/auto-pullrequest@1.0.0
        with:
          git-token: ${{ secrets.PUSH_TOKEN }}
          base-branch: main
          title: My pull request
          body: "**Automated pull request**"
```
