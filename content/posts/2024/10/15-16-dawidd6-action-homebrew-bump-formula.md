---
title: Homebrew bump formula
date: 2024-10-15 16:47:08 +00:00
tags:
  - dawidd6
  - GitHub Actions
draft: false
repo: dawidd6/action-homebrew-bump-formula
marketplace: https://github.com/marketplace/actions/homebrew-bump-formula
version: v4
dependentsNumber: "1,359"
---


Version updated for **dawidd6/action-homebrew-bump-formula** to version **v4**.
- This action is used across all versions by **1,359** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/homebrew-bump-formula) to find the latest changes.

## Release notes

## What's Changed
* docs: prefer github release over git tag by @chenrui333 in https://github.com/dawidd6/action-homebrew-bump-formula/pull/64
* prefer to use `released` event than `created` by @chenrui333 in https://github.com/dawidd6/action-homebrew-bump-formula/pull/65
* new `tap_url` input for when the repository is not in the expected tap format ($USER/homebrew-$REPO)
* restored old `force` behaviour by patching Homebrew (yea, I know)
* turn on brew developer mode to fetch latest and greatest Homebrew from master (this is for latest changes in brew needed to make this Action be testable in the same repo)
* changing the release schema, now the Action will be released in vX format (v4, v5, v6, ...)

## New Contributors
* @chenrui333 made their first contribution in https://github.com/dawidd6/action-homebrew-bump-formula/pull/64

**Full Changelog**: https://github.com/dawidd6/action-homebrew-bump-formula/compare/v3...v4
