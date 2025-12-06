---
title: git-cliff - Changelog Generator
date: 2024-08-27 00:51:55 +00:00
tags:
  - orhun
  - GitHub Actions
draft: false
repo: orhun/git-cliff-action
marketplace: https://github.com/marketplace/actions/git-cliff-changelog-generator
version: v4.0.0
dependentsNumber: "2,086"
---


Version updated for **orhun/git-cliff-action** to version **v4.0.0**.
- This action is used across all versions by **2,086** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/git-cliff-changelog-generator) to find the latest changes.

## Release notes

### Gotta go fast 🧗

`git-cliff-action` is now waaaaaaaay faster.

We switched to a classic bash script to download the `git-cliff` binary instead of a Docker action.
So, no more building images, it just downloads and runs. Vroooom! 💨

Thanks @M0NsTeRRR for the implementation in https://github.com/orhun/git-cliff-action/pull/26

### Version input ✨

Also, you can now specify a `git-cliff` version to run:

```yml
- name: Generate a changelog
  uses: orhun/git-cliff-action@v4
  with:
    version: latest
    config: cliff.toml
    args: --verbose
```

The default is `v2.5.0` as of now, but you can also use `latest`.


