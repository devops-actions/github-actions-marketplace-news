---
title: setup-goplus
date: 2023-10-10 19:05:39 +00:00
tags:
  - goplus
  - GitHub Actions
draft: false
repo: goplus/setup-goplus
marketplace: https://github.com/marketplace/actions/setup-goplus
version: v1.0.5
dependentsNumber: "2"
---


Version updated for **goplus/setup-goplus** to version **v1.0.5**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **2** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-goplus) to find the latest changes.

## Release notes

## Usage

Version matching by [SemVer spec](https://github.com/npm/node-semver):

```yaml
steps:
  - uses: actions/checkout@v4
  - uses: goplus/setup-goplus@v1
    with:
      go-version: '1.21.0'
      gop-version: '1.1.8' # The Go+ version to download (if necessary) and use.
  - run: gop version
```

