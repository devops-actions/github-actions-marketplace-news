---
title: Github Release Changelog Generator
date: 2024-02-23 11:08:48 +00:00
tags:
  - jaywcjlove
  - GitHub Actions
draft: false
repo: jaywcjlove/changelog-generator
marketplace: https://github.com/marketplace/actions/github-release-changelog-generator
version: v2.0.0
dependentsNumber: "565"
---


Version updated for **jaywcjlove/changelog-generator** to version **v2.0.0**.
- This action is used across all versions by **565** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/github-release-changelog-generator) to find the latest changes.

## Release notes

```yml
- name: Generate changelog
  id: changelog
  uses: jaywcjlove/changelog-generator@v2.0.0
  with:
    token: # Your GITHUB_TOKEN
    filter-author: (jaywcjlove|小弟调调™|dependabot\[bot\]|Renovate Bot)
    filter: '[R|r]elease[d]\s+[v|V]\d(\.\d+){0,2}'
```

https://github.com/jaywcjlove/changelog-generator/compare/v1.9.6...v2.0.0

- 💢 ci: update workflows config. 1ac54c7 @jaywcjlove
- 💄 chore: bump node16 to node20 33394ac @jaywcjlove

Document Website: https://raw.githack.com/jaywcjlove/changelog-generator/3d901b8/index.html
