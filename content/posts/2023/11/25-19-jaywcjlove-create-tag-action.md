---
title: Create Tags From
date: 2023-11-25 19:14:23 +00:00
tags:
  - jaywcjlove
  - GitHub Actions
draft: false
repo: jaywcjlove/create-tag-action
marketplace: https://github.com/marketplace/actions/create-tags-from
version: v1.3.20
dependentsNumber: "486"
---


Version updated for **jaywcjlove/create-tag-action** to version **v1.3.20**.
- This action is used across all versions by **486** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/create-tags-from) to find the latest changes.

## Release notes

Documentation v1.3.20: https://raw.githack.com/jaywcjlove/create-tag-action/38571db/index.html  
Comparing Changes: https://github.com/jaywcjlove/create-tag-action/compare/v1.3.19...v1.3.20 

```yml
- name: Create Tags From
  uses: jaywcjlove/create-tag-action@v1.3.20
  with:
    token: # Your GITHUB_TOKEN
    test: '[R|r]elease[d]\s+[v|V]\d(\.\d+){0,2}'
    # package-path: ./package.json
```

- 💢 ci: update workflows config. f906324 @jaywcjlove
- 💄 chore: add sponsor badge. df1a23f @jaywcjlove
