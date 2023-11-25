---
title: Github Release Changelog Generator
date: 2023-11-25 19:14:28 +00:00
tags:
  - jaywcjlove
  - GitHub Actions
draft: false
repo: jaywcjlove/changelog-generator
marketplace: https://github.com/marketplace/actions/github-release-changelog-generator
version: v1.9.6
dependentsNumber: "546"
---


Version updated for **jaywcjlove/changelog-generator** to version **v1.9.6**.
- This action is used across all versions by **546** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/github-release-changelog-generator) to find the latest changes.

## Release notes

```yml
- name: Generate changelog
  id: changelog
  uses: jaywcjlove/changelog-generator@v1.9.6
  with:
    token: # Your GITHUB_TOKEN
    filter-author: (jaywcjlove|小弟调调™|dependabot\[bot\]|Renovate Bot)
    filter: '[R|r]elease[d]\s+[v|V]\d(\.\d+){0,2}'
```

https://github.com/jaywcjlove/changelog-generator/compare/v1.9.5...v1.9.6

- 💢 ci: update workflows config. 0a39424 @jaywcjlove
- 💄 chore(deps): update dependency @kkt/ncc to v1.1.1 (#116) 90c97af @renovate-bot
- 💄 chore(deps): update dependency lint-staged to v14 (#115) d8d0b41 @renovate-bot
- 📖 doc: Update README.md (#119) c2c51ce @jaywcjlove
- 💄 chore: add sponsor badge. e3e1b5f @jaywcjlove

Document Website: https://raw.githack.com/jaywcjlove/changelog-generator/95a117f/index.html
