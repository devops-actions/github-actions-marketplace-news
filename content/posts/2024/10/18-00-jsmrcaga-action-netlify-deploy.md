---
title: Netlify Deploy
date: 2024-10-18 00:55:18 +00:00
tags:
  - jsmrcaga
  - GitHub Actions
draft: false
repo: jsmrcaga/action-netlify-deploy
marketplace: https://github.com/marketplace/actions/netlify-deploy
version: v2.3.0
dependentsNumber: "1,047"
---


Version updated for **jsmrcaga/action-netlify-deploy** to version **v2.3.0**.
- This action is used across all versions by **1,047** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/netlify-deploy) to find the latest changes.

## Release notes

## Important

This release fixes the netlify cli not existing anymore.

If you're using `ubuntu-latest` in your workflow files, you've certainly noticed that the netlify CLI is missing. This is because the GitHub runner image for Ubuntu 24 no longer includes it by default.
@tpluscode added an optional installation on this release so that your workflows may work on `ubuntu-latest`.
Please take note to fix the image versions on your worklflows  if needed, `netlify` is not the only tool no longer included by default.

## What's Changed
* Update README (minor fixes) by @coliff in https://github.com/jsmrcaga/action-netlify-deploy/pull/58
* install netlify if not found by @tpluscode in https://github.com/jsmrcaga/action-netlify-deploy/pull/60

## New Contributors
* @coliff made their first contribution in https://github.com/jsmrcaga/action-netlify-deploy/pull/58

**Full Changelog**: https://github.com/jsmrcaga/action-netlify-deploy/compare/v2.2.0...v3.0.0
