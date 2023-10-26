---
title: Changed Files
date: 2023-10-26 11:16:57 +00:00
tags:
  - tj-actions
  - GitHub Actions
draft: false
repo: tj-actions/changed-files
marketplace: https://github.com/marketplace/actions/changed-files
version: v40
dependentsNumber: "9,592"
---


Version updated for **tj-actions/changed-files** to version **v40**.
- This action is used across all versions by **9,592** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/changed-files) to find the latest changes.

## Release notes

# Changes in v40.0.0
## 🔥 🔥  Breaking Change 🔥 🔥 
* Directory patterns now require explicit specification of the globstar pattern to match all sub paths.

### 

```diff
...
      - name: Get specific changed files
        id: changed-files-specific
        uses: tj-actions/changed-files@v40
        with:
          files: |
-            dir
+            dir/**
```

## What's Changed
* Upgraded to v39.2.4 by @tj-actions-bot in https://github.com/tj-actions/changed-files/pull/1664
* chore(deps): lock file maintenance by @renovate in https://github.com/tj-actions/changed-files/pull/1665
* Bump @types/node from 20.8.7 to 20.8.8 by @dependabot in https://github.com/tj-actions/changed-files/pull/1666
* chore(deps): update dependency @types/node to v20.8.9 by @renovate in https://github.com/tj-actions/changed-files/pull/1668
* remove: appending globstar pattern for directories to prevent bugs with path matching by @jackton1 in https://github.com/tj-actions/changed-files/pull/1670
* chore(deps): lock file maintenance by @renovate in https://github.com/tj-actions/changed-files/pull/1671


**Full Changelog**: https://github.com/tj-actions/changed-files/compare/v39...v40.0.0

---


