---
title: Build Jekyll (v4) for GitHub Pages
date: 2024-03-23 03:25:08 +00:00
tags:
  - dunkmann00
  - GitHub Actions
draft: false
repo: dunkmann00/jekyll-v4-build-pages
marketplace: https://github.com/marketplace/actions/build-jekyll-v4-for-github-pages
version: v2.2.0
dependentsNumber: "2"
---


Version updated for **dunkmann00/jekyll-v4-build-pages** to version **v2.2.0**.
- This action is used across all versions by **2** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-jekyll-v4-for-github-pages) to find the latest changes.

## Release notes

## What's Changed
* Prepare for a new release by @dunkmann00 in https://github.com/dunkmann00/jekyll-v4-build-pages/pull/17
  * Remove deps already in `pages-gem`
  * Remove `jekyll-octicons` and `jekyll-include-cache`, they have both been added to `pages-gem` so it is unnecessary to keep them here.
  * Bump `pages-gem` dependency to 237
  * Bump docker image version
  * Update test output for theme updates
* Add `setup-buildx-action` back just for docker publish workflow by @dunkmann00 in https://github.com/dunkmann00/jekyll-v4-build-pages/pull/18

**Full Changelog**: https://github.com/dunkmann00/jekyll-v4-build-pages/compare/v2.1.2...v2.2.0
