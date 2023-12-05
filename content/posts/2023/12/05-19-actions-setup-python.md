---
title: Setup Python
date: 2023-12-05 19:21:48 +00:00
tags:
  - actions
  - GitHub Actions
draft: false
repo: actions/setup-python
marketplace: https://github.com/marketplace/actions/setup-python
version: v4.8.0
dependentsNumber: "891,931"
---


Version updated for **actions/setup-python** to version **v4.8.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **891,931** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-python) to find the latest changes.

## Release notes

## What's Changed
In scope of this release we added support for GraalPy (https://github.com/actions/setup-python/pull/694). You can use this snippet to set up GraalPy:

```yaml
steps:
- uses: actions/checkout@v4
- uses: actions/setup-python@v4 
  with:
    python-version: 'graalpy-22.3' 
- run: python my_script.py
```

Besides, the release contains such changes as:
* Trim python version when reading from file by @FerranPares in https://github.com/actions/setup-python/pull/628
* Use non-deprecated versions in examples by @jeffwidman in https://github.com/actions/setup-python/pull/724
* Change deprecation comment to past tense by @jeffwidman in https://github.com/actions/setup-python/pull/723
* Bump @babel/traverse from 7.9.0 to 7.23.2 by @dependabot in https://github.com/actions/setup-python/pull/743
* advanced-usage.md: Encourage the use actions/checkout@v4 by @cclauss in https://github.com/actions/setup-python/pull/729
* Examples now use checkout@v4 by @simonw in https://github.com/actions/setup-python/pull/738
* Update actions/checkout to v4 by @dmitry-shibanov in https://github.com/actions/setup-python/pull/761

## New Contributors
* @FerranPares made their first contribution in https://github.com/actions/setup-python/pull/628
* @timfel made their first contribution in https://github.com/actions/setup-python/pull/694
* @jeffwidman made their first contribution in https://github.com/actions/setup-python/pull/724

**Full Changelog**: https://github.com/actions/setup-python/compare/v4...v4.8.0
