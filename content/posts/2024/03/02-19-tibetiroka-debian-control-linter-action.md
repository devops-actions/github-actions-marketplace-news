---
title: debian-control-linter
date: 2024-03-02 19:20:11 +00:00
tags:
  - tibetiroka
  - GitHub Actions
draft: false
repo: tibetiroka/debian-control-linter-action
marketplace: https://github.com/marketplace/actions/debian-control-linter
version: v1.0.0
dependentsNumber: "?"
---


Version updated for **tibetiroka/debian-control-linter-action** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/debian-control-linter) to find the latest changes.

## Release notes

Github action for [tibetiroka/debian-control-linter](https://github.com/tibetiroka/debian-control-linter).

# Usage

```yml
- name: Check copyright
  uses: tibetiroka/debian-control-linter-action@v1
  with:
    type: 'debian/copyright'
    file: 'copyright'
    preset: 'strict'
    enable: 'urlExists,urlForceHttps,trailingSpace,fieldNameCapitalization'
```

For more information about configuring the linter, visit the [upstream project](https://github.com/tibetiroka/debian-control-linter).
