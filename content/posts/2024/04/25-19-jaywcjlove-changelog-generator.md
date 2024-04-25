---
title: Github Release Changelog Generator
date: 2024-04-25 19:27:27 +00:00
tags:
  - jaywcjlove
  - GitHub Actions
draft: false
repo: jaywcjlove/changelog-generator
marketplace: https://github.com/marketplace/actions/github-release-changelog-generator
version: v2.1.0
dependentsNumber: "588"
---


Version updated for **jaywcjlove/changelog-generator** to version **v2.1.0**.
- This action is used across all versions by **588** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/github-release-changelog-generator) to find the latest changes.

## Release notes

```yml
- name: Generate changelog
  id: changelog
  uses: jaywcjlove/changelog-generator@v2.1.0
  with:
    token: # Your GITHUB_TOKEN
    filter-author: (jaywcjlove|小弟调调™|dependabot\[bot\]|Renovate Bot)
    filter: '[R|r]elease[d]\s+[v|V]\d(\.\d+){0,2}'
```

https://github.com/jaywcjlove/changelog-generator/compare/v2.0.0...v2.1.0

- 🌟 feat: add `order` input #123. bc36781 @jaywcjlove
- 💢 ci: update workflows config. 1405f06 @jaywcjlove
- 💄 chore: update dist/index.js a6fb929 @jaywcjlove
- 💢 ci: update workflows config. cdab3dc @jaywcjlove
- 🐞 fix: fix order input issue. 61c5b5e @jaywcjlove
- 🐞 fix: fix order input issue. 9bb6916 @jaywcjlove

Document Website: https://raw.githack.com/jaywcjlove/changelog-generator/4129426/index.html
