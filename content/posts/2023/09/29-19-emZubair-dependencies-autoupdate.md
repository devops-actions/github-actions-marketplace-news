---
title: Dependencies Autoupdate with Custom branch
date: 2023-09-29 19:13:39 +00:00
tags:
  - emZubair
  - GitHub Actions
draft: false
repo: emZubair/dependencies-autoupdate
marketplace: https://github.com/marketplace/actions/dependencies-autoupdate-with-custom-branch
version: v1.2
dependentsNumber: "1"
---


Version updated for **emZubair/dependencies-autoupdate** to version **v1.2**.
- This publisher is shown as erified by GitHub.
- This action is used across all versions by **1** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/dependencies-autoupdate-with-custom-branch) to find the latest changes.

## Release notes

## What's Changed
* Updated support for custom release branch, it can be specified as given below 

```
    - name: Run auto dependency update
      uses: emZubair/dependencies-autoupdate@v1.1.1
      with:
        token: ${{ secrets.GITHUB_TOKEN }}
        pr-branch: "staging"
        update-command: "'make update'"
```


**Full Changelog**: https://github.com/emZubair/dependencies-autoupdate/compare/v1.1.1...v1.2
