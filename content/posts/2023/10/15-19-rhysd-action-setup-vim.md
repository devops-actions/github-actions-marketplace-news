---
title: Setup Vim
date: 2023-10-15 19:03:20 +00:00
tags:
  - rhysd
  - GitHub Actions
draft: false
repo: rhysd/action-setup-vim
marketplace: https://github.com/marketplace/actions/setup-vim
version: v1.3.0
dependentsNumber: "1,142"
---


Version updated for **rhysd/action-setup-vim** to version **v1.3.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **1,142** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-vim) to find the latest changes.

## Release notes

- `configure-args` input was added to customize build configurations on building Vim from source. This input is useful to change `./configure` arguments to enable/disable some features of Vim. For example, when you're facing some issue on generating translation files (this sometimes happens when building older Vim), disabling the native language support would be able to avoid the issue. (#27)
  ```yaml
  - uses: rhysd/action-setup-vim@v1
    with:
      version: 8.0.0000
      configure-args: |
        --with-features=huge --enable-fail-if-missing --disable-nls
  ```
- Update the action runtime to `node20`. Now this action is run with Node.js v20.
- Update all dependencies to the latest including `@actions/github` v6.0.0 and some security fixes.
