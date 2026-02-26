---
title: anti-slop
date: 2026-02-26 05:44:38 +00:00
tags:
  - peakoss
  - GitHub Actions
draft: false
repo: https://github.com/peakoss/anti-slop
marketplace: https://github.com/marketplace/actions/anti-slop
version: v0.2.0
dependentsNumber: "29"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/peakoss/anti-slop** to version **v0.2.0**.
- This action is used across all versions by **29** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/anti-slop) to find the latest changes.

## Action Summary

Anti Slop is a GitHub Action designed to detect and automatically close low-quality or AI-generated pull requests (PRs) by applying 31 battle-tested checks across various aspects of PRs, such as branches, titles, descriptions, commits, and contributor history. It helps open-source maintainers save time by preventing these PRs from reaching the review stage, while remaining language-agnostic and configurable with sensible defaults. The action facilitates maintaining open contributions without penalizing legitimate or AI-assisted quality contributions.

## Release notes

Adds 9 new checks that cover more than 20 quality signals.

## Breaking Changes

- Remove `deleteBranch` option as it requires `content: write` permissions and does not work on forks
- Set [sensible maximums](https://github.com/peakoss/anti-slop/pull/3/changes/f71f3b36c1428067b5627f9f00b4b52861bdf6a3) for all integer input options

## Added

- `requireCommitAuthorMatch` option that matches the PR author against each commit author, catching commits authored solely by AI and commits not linked to a GitHub account
- `maxCommitMessageLength` option to catch AI stuffing a lot of text into commit messages
- 3 new user checks: `detectSpamUsernames`, `maxDailyForks` and `minProfileCompleteness`
  - `detectSpamUsernames`: flags usernames matching common spam patterns (all digits, 4+ consecutive digits, contains `-ai` or `ai-`)
  - `maxDailyForks`: checks the number of repositories forked by the user in any 24-hour window
  - `minProfileCompleteness`: checks 11 profile signals (`public profile`, `name`, `company`, `blog`, `location`, `email`, `hireable`, `bio`, `twitter`, `followers`, `following`) against a configurable minimum
- 3 new settings for the PR template check: `strictPrTemplateSections`, `optionalPrTemplateSections` and `maxAdditionalPrTemplateSections`
  - `strictPrTemplateSections`: classifies sections where all checkboxes must be present and checked
  - `optionalPrTemplateSections`: classifies sections that can be entirely removed without failing
  - `maxAdditionalPrTemplateSections`: limit extra sections not defined in the template
- `maxCodeReferences` option to limit the number of code references (file paths, function calls, method calls) in the PR description
- `maxAddedComments` option to limit the number of comments added in all changed files

## Changed

- Use `authorAssociation` instead of the search API when `minRepoMergedPrs` is `1` for improved performance
- `max-failures` default from `3` to `4`
- `maxDescriptionLength` default from `0` to `2500`
- `minAccountAge` default from `7` to `30`
- Improve and streamline check info messages

## Fixed

- Exclude inherited default-branch commits from commit checks. Commits from the repo's default branch (e.g. `main`) that the base (target) branch (e.g. `next`) of the PR hasn't caught up to yet are now excluded to avoid false positives, since these commits are already integrated.
- Use `headSha` instead of `headBranch` for the newline check because if the PR is from a fork, the head branch name only exists in the fork repo and causes a `404` error when fetching file content against the base repo

## Refactored

- Run user merge checks as a separate group
- Run PR template checks as a separate group
- Make description checks synchronous (no longer require the GitHub API) after extracting the PR template checks into their own group
- Replace short variables with full-length ones
- Streamline `action.yaml` input descriptions

## Maintenance

- `@typescript-eslint/consistent-generic-constructors` rule set to `type-annotation` for compatibility with `isolatedDeclarations`
- Add debug logging to excluded commits
- Update readme with new and removed options
- Update total number of checks
- Remove `node_modules` and do a fresh install before building in the release script
- Show build time and suppress the default git tag message in the release script
- Add missing payload fields to test events
- Add real user test event

