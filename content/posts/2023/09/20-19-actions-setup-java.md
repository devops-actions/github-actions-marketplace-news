---
title: Setup Java JDK
date: 2023-09-20 19:10:47 +00:00
tags:
  - actions
  - GitHub Actions
draft: false
repo: actions/setup-java
marketplace: https://github.com/marketplace/actions/setup-java-jdk
version: v3.13.0
dependentsNumber: "591,194"
---


Version updated for **actions/setup-java** to version **v3.13.0**.
- This publisher is shown as erified by GitHub.
- This action is used across all versions by **591,194** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-java-jdk) to find the latest changes.

## Release notes

## What's changed
In the scope of this release, support for Dragonwell JDK was added by @Accelerator1996 in https://github.com/actions/setup-java/pull/532

```yaml
steps:
 - name: Checkout
   uses: actions/checkout@v3
 - name: Setup-java
   uses: actions/setup-java@v3
   with:
     distribution: 'dragonwell'
     java-version: '17'
```
Several inaccuracies were also fixed:

* Fix XML namespaces wrongly using https by @gnodet in https://github.com/actions/setup-java/pull/503
* Fix typo and remove unintentional(?) word by @CyberFlameGO in https://github.com/actions/setup-java/pull/518
* Fix usage link within the README.md file by @dassiorleando in https://github.com/actions/setup-java/pull/525

## New Contributors
* @CyberFlameGO made their first contribution in https://github.com/actions/setup-java/pull/518
* @dassiorleando made their first contribution in https://github.com/actions/setup-java/pull/525
* @gnodet made their first contribution in https://github.com/actions/setup-java/pull/503
* @Accelerator1996 made their first contribution in https://github.com/actions/setup-java/pull/532

**Full Changelog**: https://github.com/actions/setup-java/compare/v3...v3.13.0
