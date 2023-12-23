---
title: Changed Files
date: 2023-12-23 19:17:49 +00:00
tags:
  - tj-actions
  - GitHub Actions
draft: false
repo: tj-actions/changed-files
marketplace: https://github.com/marketplace/actions/changed-files
version: v41
dependentsNumber: "11,062"
---


Version updated for **tj-actions/changed-files** to version **v41**.
- This action is used across all versions by **11,062** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/changed-files) to find the latest changes.

## Release notes

# Changes in v41.0.0
## 🔥 🔥 BREAKING CHANGE 🔥 🔥 
A new `safe_output` input is now available to prevent outputting unsafe filename characters (Enabled by default). This would escape characters in the filename that could be used for command injection.

> [!NOTE]
> This can be disabled by setting the `safe_output` to false with the recommendation to store all outputs generated in an environment variable first before using them.

#### Example
```yaml
...
    - name: Get changed files
      id: changed-files
      uses: tj-actions/changed-files@v40
      with:
        safe_output: false # set to false because we are using an environment variable to store the output and avoid command injection.

    - name: List all added files
      env:
        ADDED_FILES: ${{ steps.changed-files.outputs.added_files }}
      run: |
        for file in "$ADDED_FILES"; do
          echo "$file was added"
        done
...
```




## What's Changed
* chore(deps): update typescript-eslint monorepo to v6.15.0 by @renovate in https://github.com/tj-actions/changed-files/pull/1801
* Upgraded to v40.2.3 by @tj-actions-bot in https://github.com/tj-actions/changed-files/pull/1800
* chore(deps): update dependency eslint-plugin-prettier to v5.1.0 by @renovate in https://github.com/tj-actions/changed-files/pull/1802
* chore(deps): lock file maintenance by @renovate in https://github.com/tj-actions/changed-files/pull/1803
* chore(deps): update dependency eslint-plugin-prettier to v5.1.1 by @renovate in https://github.com/tj-actions/changed-files/pull/1804
* fix: update safe output regex and the docs by @tj-actions-bot in https://github.com/tj-actions/changed-files/pull/1805
* Revert "chore(deps): update actions/download-artifact action to v4" by @jackton1 in https://github.com/tj-actions/changed-files/pull/1806
* Update README.md by @jackton1 in https://github.com/tj-actions/changed-files/pull/1808
* chore(deps): lock file maintenance by @renovate in https://github.com/tj-actions/changed-files/pull/1809
* Updated README.md by @tj-actions-bot in https://github.com/tj-actions/changed-files/pull/1810


**Full Changelog**: https://github.com/tj-actions/changed-files/compare/v40...v41.0.0

---


