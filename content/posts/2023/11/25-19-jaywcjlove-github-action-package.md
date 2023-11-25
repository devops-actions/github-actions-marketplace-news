---
title: Read & Modify of package.json
date: 2023-11-25 19:14:13 +00:00
tags:
  - jaywcjlove
  - GitHub Actions
draft: false
repo: jaywcjlove/github-action-package
marketplace: https://github.com/marketplace/actions/read-modify-of-package-json
version: v1.3.2
dependentsNumber: "171"
---


Version updated for **jaywcjlove/github-action-package** to version **v1.3.2**.
- This action is used across all versions by **171** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/read-modify-of-package-json) to find the latest changes.

## Release notes

Documentation v1.3.2: https://raw.githack.com/jaywcjlove/github-action-package/5d3dd6a/index.html  
Comparing Changes: https://github.com/jaywcjlove/github-action-package/compare/v1.3.1...v1.3.2  

```yaml
- name: package.json info
  id: info
  uses: jaywcjlove/github-action-package@main

- run: echo "name - github-action-package"
- run: echo "version - 1.3.2"
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
- run: echo "version - 1.3.2"
- run: echo "description - Read and modify the contents of package.json."
- run: echo "author - jaywcjlove"
```

- 💄 chore: update sponsor badge. 2ccc317 @jaywcjlove
