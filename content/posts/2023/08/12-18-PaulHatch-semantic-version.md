---
title: Git Semantic Version
date: 2023-08-12 18:54:47 +00:00
tags:
  - PaulHatch
  - GitHub Actions
draft: false
repo: PaulHatch/semantic-version
marketplace: https://github.com/marketplace/actions/git-semantic-version
version: v5.1.0
dependentsNumber: 0
---


Version updated for **PaulHatch/semantic-version** to version **v5.1.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/git-semantic-version) to find the latest changes.

## Release notes

## New Features
- (#69) Added a patch pattern for "bump each commit". If `bump_each_commit_patch_pattern` is set AND bump each commit mode is enabled, the patch version will only increment if the commit matches the specified patch pattern. Note that regex is supported using the JavaScript-like `/pattern/` syntax. Flags are also supported using `/pattern/I` but there is no dedicated "flags" input. (This is the preferred method and the existing flags inputs for major and minor may be deprecated in a future release.)
- (#88) Added "prerelease mode" for repos which are still on 0.x.x version. If enabled this will treat "major" changes as "minor", preventing the `1.0.0` version from being automatically set. (It must be set manually) This is intended to help manage versioning for projects with a long pre-release timeline so that developers don't need to worry about the overall state of the project and can still indicate whether a particular commit is breaking or not.
- (#94) An output, `is_tagged`, indicates whether this commit was itself directly tagged. (Thanks @Kantis)
- (#92) Added outputs to provide information about the commit of the previous version.

**Full Changelog**: https://github.com/PaulHatch/semantic-version/compare/v5.0.3...v5.1.0
