---
title: Deploy Nightly
date: 2023-10-27 19:11:03 +00:00
tags:
  - WebFreak001
  - GitHub Actions
draft: false
repo: WebFreak001/deploy-nightly
marketplace: https://github.com/marketplace/actions/deploy-nightly
version: v3.0.0
dependentsNumber: "512"
---


Version updated for **WebFreak001/deploy-nightly** to version **v3.0.0**.
- This action is used across all versions by **512** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/deploy-nightly) to find the latest changes.

## Release notes

## Breaking Changes

* the `GITHUB_TOKEN` environment variable will soon no longer be used.
  * Simply remove the environment variable from the action call if you have it set to `${secrets.GITHUB_TOKEN}`
  * if you had a custom token, set it with `token` as action input parameter now (`with:` block) instead.

## What's Changed
* docs: using latest version in demo code. by @VShawn in https://github.com/WebFreak001/deploy-nightly/pull/21
* Add token, repo and sha input by @n-elie in https://github.com/WebFreak001/deploy-nightly/pull/23 and https://github.com/WebFreak001/deploy-nightly/pull/25
	* you can now publish nightlies for other repositories and/or other commits, for this set the `repo` and `sha` values as well as `token` to one with permissions, if needed

## New Contributors
* @VShawn made their first contribution in https://github.com/WebFreak001/deploy-nightly/pull/21
* @n-elie made their first contribution in https://github.com/WebFreak001/deploy-nightly/pull/23

**Full Changelog**: https://github.com/WebFreak001/deploy-nightly/compare/v2.0.0...v3.0.0
