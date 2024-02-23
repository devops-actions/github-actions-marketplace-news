---
title: Create Tags From
date: 2024-02-23 11:08:43 +00:00
tags:
  - jaywcjlove
  - GitHub Actions
draft: false
repo: jaywcjlove/create-tag-action
marketplace: https://github.com/marketplace/actions/create-tags-from
version: v2.0.0
dependentsNumber: "509"
---


Version updated for **jaywcjlove/create-tag-action** to version **v2.0.0**.
- This action is used across all versions by **509** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/create-tags-from) to find the latest changes.

## Release notes

Documentation v2.0.0: https://raw.githack.com/jaywcjlove/create-tag-action/7971dfd/index.html  
Comparing Changes: https://github.com/jaywcjlove/create-tag-action/compare/v1.3.20...v2.0.0 

```yml
- name: Create Tags From
  uses: jaywcjlove/create-tag-action@v2.0.0
  with:
    token: # Your GITHUB_TOKEN
    test: '[R|r]elease[d]\s+[v|V]\d(\.\d+){0,2}'
    # package-path: ./package.json
```

- 💢 ci: update workflows config. 4856f16 @jaywcjlove
- 🐞 fix(deps): update dependency @actions/github to v6 (#329) 88312f2 @renovate-bot
- 💄 chore(deps): update dependency lint-staged to v15 (#330) 929356f @renovate-bot
- 💄 chore(deps): update dependency husky to v9 (#332) b0afba8 @renovate-bot
- 💄 chore(deps): update dependency @types/node to v20 (#331) a56ded8 @renovate-bot
- 💄 chore: bump node16 to node20. 92047ce @jaywcjlove
