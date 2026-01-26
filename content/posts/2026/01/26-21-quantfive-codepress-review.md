---
title: CodePress Review
date: 2026-01-26 21:45:04 +00:00
tags:
  - quantfive
  - GitHub Actions
draft: false
repo: https://github.com/quantfive/codepress-review
marketplace: https://github.com/marketplace/actions/codepress-review
version: v4.2.10
dependentsNumber: "?"
---


Version updated for **https://github.com/quantfive/codepress-review** to version **v4.2.10**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/codepress-review) to find the latest changes.

## Action Summary

CodePress Review is a GitHub Action that automates the code review process for pull requests using large language models (LLMs) from various providers. It provides intelligent, context-aware feedback by analyzing code changes, posting inline comments, generating structured PR descriptions, and submitting review decisions (approve, request changes, or comment). This action streamlines the code review process, enhances collaboration, and ensures consistent code quality with customizable and provider-agnostic functionality.

## Release notes

## What's Changed

### Commits since v4.2.9

bf3cd0e Build dist for v4.2.10
0dfa90c Bump version to v4.2.10
bd380ef Merge pull request #52 from quantfive/improve-rereview-prompting
06b0386 add force_full_review option to force complete review of all files
842ca81 handle edge case: no file changes since last review
38436f2 clarify re-review scope: diff from last review commit, not just "new commits"
da7be5e fix initial message workflow to respect re-review scoping
dca6ce0 fix workflow order: determine scope BEFORE creating todos
febe328 add fallback options for getting diff in shallow clones

**Full Changelog**: https://github.com/quantfive/codepress-review/compare/v4.2.9...v4.2.10


## What's Changed
* Additional Rules by @lightninglu10 in https://github.com/quantfive/codepress-review/pull/43
* existing comments by @lightninglu10 in https://github.com/quantfive/codepress-review/pull/44
* even more agentic by @lightninglu10 in https://github.com/quantfive/codepress-review/pull/45
* updating package versions by @lightninglu10 in https://github.com/quantfive/codepress-review/pull/46
* Creating better context by @lightninglu10 in https://github.com/quantfive/codepress-review/pull/47
* do not fail on bad calls by @lightninglu10 in https://github.com/quantfive/codepress-review/pull/48
* Tool finish by @lightninglu10 in https://github.com/quantfive/codepress-review/pull/49
* Get back to output json completion by @lightninglu10 in https://github.com/quantfive/codepress-review/pull/50
* Improve re-review and completion prompting by @lightninglu10 in https://github.com/quantfive/codepress-review/pull/51
* Improve rereview prompting and add force full review by @lightninglu10 in https://github.com/quantfive/codepress-review/pull/52


**Full Changelog**: https://github.com/quantfive/codepress-review/compare/v4.0.10...v4.2.10
