---
title: Changed Files
date: 2024-03-27 11:26:08 +00:00
tags:
  - tj-actions
  - GitHub Actions
draft: false
repo: tj-actions/changed-files
marketplace: https://github.com/marketplace/actions/changed-files
version: v44
dependentsNumber: "13,173"
---


Version updated for **tj-actions/changed-files** to version **v44**.
- This action is used across all versions by **13,173** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/changed-files) to find the latest changes.

## Release notes

# Changes in v44.0.0
## 🔥🔥 BREAKING CHANGE 🔥🔥

### Overview
We've made a significant update to how pull requests (PRs) from forked repositories are processed. This improvement not only streamlines the handling of such PRs but also fixes a previously identified issue.

### Before the Change
Previously, when you created a pull request from a forked repository, any files changed in the target branch after the PR creation would erroneously appear as part of the PR's changed files. This made it difficult to distinguish between the actual changes introduced by the PR and subsequent changes made directly to the target branch.

### What Has Changed
With this update, a pull request from a fork will now **only** include the files that were explicitly changed in the fork. This ensures that the list of changed files in a PR accurately reflects the contributions from the fork, without being muddled by unrelated changes to the target branch.

### Important Note for Users
To take advantage of this new behaviour, it's necessary to specify the fork repository explicitly when performing the checkout step in your workflows. Below is an example configuration that demonstrates how to do this:

```yml
- uses: actions/checkout@v4
  with:
    repository: ${{ github.event.pull_request.head.repo.full_name }}
```

This modification ensures that your workflows correctly identify and interact with the source repository for PRs originating from forks.

---

## What's Changed
* Upgraded to v43.0.1 by @tj-actions-bot in https://github.com/tj-actions/changed-files/pull/2004
* chore(deps): lock file maintenance by @renovate in https://github.com/tj-actions/changed-files/pull/2005
* chore(deps): update typescript-eslint monorepo to v7.4.0 by @renovate in https://github.com/tj-actions/changed-files/pull/2006
* fix: bug with prs from forks returning incorrect set of changed files by @jackton1 in https://github.com/tj-actions/changed-files/pull/2007
* fix: check for setting remote urls for forks by @jackton1 in https://github.com/tj-actions/changed-files/pull/2009
* fix: update to add the fork remote by @jackton1 in https://github.com/tj-actions/changed-files/pull/2010
* fix: update previous sha for forks by @jackton1 in https://github.com/tj-actions/changed-files/pull/2011
* fix: ensure the fork remote doesn't exists before creating it by @jackton1 in https://github.com/tj-actions/changed-files/pull/2012
* chore: update description of other_deleted_files output by @tonyejack1 in https://github.com/tj-actions/changed-files/pull/2008
* Updated README.md by @tj-actions-bot in https://github.com/tj-actions/changed-files/pull/2013
* remove: unused code by @jackton1 in https://github.com/tj-actions/changed-files/pull/2014
* chore: update description of outputs removing asterisks  by @tonyejack1 in https://github.com/tj-actions/changed-files/pull/2015
* Updated README.md by @tj-actions-bot in https://github.com/tj-actions/changed-files/pull/2016

## New Contributors
* @tonyejack1 made their first contribution in https://github.com/tj-actions/changed-files/pull/2008

**Full Changelog**: https://github.com/tj-actions/changed-files/compare/v43.0.1...v44.0.0

---


