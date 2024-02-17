---
title: Setup ReSharper Command Line Tools
date: 2024-02-17 19:14:55 +00:00
tags:
  - goit
  - GitHub Actions
draft: false
repo: goit/setup-resharper
marketplace: https://github.com/marketplace/actions/setup-resharper-command-line-tools
version: v3.0.1
dependentsNumber: "12"
---


Version updated for **goit/setup-resharper** to version **v3.0.1**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **12** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-resharper-command-line-tools) to find the latest changes.

## Release notes

### Usage

```yaml
steps:
- uses: actions/checkout@v4
- uses: goit/setup-resharper@v3
  with:
    version: '2021.2'
- run: InspectCode <solution file>
```
