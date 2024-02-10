---
title: Baler – BAd Link reportER
date: 2024-02-10 03:28:03 +00:00
tags:
  - caltechlibrary
  - GitHub Actions
draft: false
repo: caltechlibrary/baler
marketplace: https://github.com/marketplace/actions/baler-bad-link-reporter
version: v2.0.4
dependentsNumber: "17"
---


Version updated for **caltechlibrary/baler** to version **v2.0.4**.
- This action is used across all versions by **17** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/baler-bad-link-reporter) to find the latest changes.

## Release notes

* Changes in this version:

* Fixed problem in which the sample workflow embedded in the GitHub Pages site (<https://caltechlibrary.github.io/baler>) was damaged because the contents were interpreted by Jekyll as variable references.
* Fixed a bug in the Makefile preventing the post-release workflow from running.
* Added a call to `jsonlint` in the `make lint` action, and a `jsonlint` config file.
* Switched to a different CLI for `markdownlint` that has more options.

