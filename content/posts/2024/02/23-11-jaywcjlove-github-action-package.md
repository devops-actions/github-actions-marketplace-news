---
title: Read & Modify of package.json
date: 2024-02-23 11:08:35 +00:00
tags:
  - jaywcjlove
  - GitHub Actions
draft: false
repo: jaywcjlove/github-action-package
marketplace: https://github.com/marketplace/actions/read-modify-of-package-json
version: v2.0.0
dependentsNumber: "200"
---


Version updated for **jaywcjlove/github-action-package** to version **v2.0.0**.
- This action is used across all versions by **200** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/read-modify-of-package-json) to find the latest changes.

## Release notes

Documentation v2.0.0: https://raw.githack.com/jaywcjlove/github-action-package/510cb71/index.html  
Comparing Changes: https://github.com/jaywcjlove/github-action-package/compare/v1.3.2...v2.0.0  

```yaml
- name: package.json info
  id: info
  uses: jaywcjlove/github-action-package@main

- run: echo "name - github-action-package"
- run: echo "version - 2.0.0"
- run: echo "description - Read and modify the contents of package.json."
- run: echo "author - jaywcjlove"
```

```yaml
- name: package.json info
  id: info
  uses: jaywcjlove/github-action-package@main
  with:
    data: |
      {
        "name": "@jaywcjlove/github-action-package-test"
      }

- run: echo "name - github-action-package"
- run: echo "version - 2.0.0"
- run: echo "description - Read and modify the contents of package.json."
- run: echo "author - jaywcjlove"
```

- 🐞 fix: upgrade node16 to node20 #11 9a9b444 @jaywcjlove
- 💄 chore(deps): update dependency @kkt/ncc to ~1.1.0 (#8) d49d787 @renovate-bot
- 💄 chore: output dist js de54a75 @jaywcjlove
- 💄 chore(deps): update dependency husky to v9 fix #10 6d12818 @jaywcjlove
- 💄 chore: add engines feild to package.json #11 6237279 @jaywcjlove
