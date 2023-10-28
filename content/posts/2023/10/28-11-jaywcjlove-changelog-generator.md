---
title: Github Release Changelog Generator
date: 2023-10-28 11:06:33 +00:00
tags:
  - jaywcjlove
  - GitHub Actions
draft: false
repo: jaywcjlove/changelog-generator
marketplace: https://github.com/marketplace/actions/github-release-changelog-generator
version: v1.9.5
dependentsNumber: "536"
---


Version updated for **jaywcjlove/changelog-generator** to version **v1.9.5**.
- This action is used across all versions by **536** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/github-release-changelog-generator) to find the latest changes.

## Release notes

```yml
- name: Generate changelog
  id: changelog
  uses: jaywcjlove/changelog-generator@v1.9.5
  with:
    token: # Your GITHUB_TOKEN
    filter-author: (jaywcjlove|小弟调调™|dependabot\[bot\]|Renovate Bot)
    filter: '[R|r]elease[d]\s+[v|V]\d(\.\d+){0,2}'
```

https://github.com/jaywcjlove/changelog-generator/compare/v1.9.4...v1.9.5

- 🐞 fix: build js. (#114) a3400d2 @jaywcjlove

Document Website: https://raw.githack.com/jaywcjlove/changelog-generator/452f438/index.html
