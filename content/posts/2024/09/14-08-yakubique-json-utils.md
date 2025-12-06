---
title: JSON Utils
date: 2024-09-14 08:46:27 +00:00
tags:
  - yakubique
  - GitHub Actions
draft: false
repo: yakubique/json-utils
marketplace: https://github.com/marketplace/actions/json-utils
version: v1.8
dependentsNumber: "4"
---


Version updated for **yakubique/json-utils** to version **v1.8**.
- This action is used across all versions by **4** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/json-utils) to find the latest changes.

## Release notes

**Full Changelog**: https://github.com/yakubique/json-utils/compare/v1.7...v1.8

## None

Sometimes it's OK to do nothing

```yaml
  - name: Nothing to do
    uses: yakubique/json-utils@v1.8
    with:
      input: '[1,2,3,4,5]'
      action: "none"

  # returns: [1,2,3,4,5]
```

