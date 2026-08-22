---
title: Done Means Done
date: 2026-08-22 06:02:37 +00:00
tags:
  - vaibh123540
  - GitHub Actions
draft: false
repo: https://github.com/vaibh123540/Done-Means-Done
marketplace: https://github.com/marketplace/actions/done-means-done
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  Done Means Done is a GitHub Action that automates the process of ensuring all acceptance criteria in linked issues are met before a pull request can be closed. It checks pull request bodies for links to issues and verifies that corresponding task list items under specified headings are completed, failing with detailed messages if any are missing.
---


Version updated for **https://github.com/vaibh123540/Done-Means-Done** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/done-means-done) to find the latest changes.

## Action Summary

Done Means Done is a GitHub Action that automates the process of ensuring all acceptance criteria in linked issues are met before a pull request can be closed. It checks pull request bodies for links to issues and verifies that corresponding task list items under specified headings are completed, failing with detailed messages if any are missing.

## What's Changed

## Done Means Done v1.0.0

First public release of Done Means Done.

Done Means Done is a GitHub Action that blocks pull requests when linked issues still contain unchecked acceptance criteria.

### Features

- Detects issues linked from pull requests using GitHub closing keywords such as `Closes`, `Fixes`, and `Resolves`
- Checks the linked issue's `Acceptance Criteria` section
- Fails the workflow when acceptance criteria remain unchecked
- Supports configurable section names
- Optional enforcement requiring every PR to link an issue
- Clear workflow logs, annotations, and job summaries
- Runs entirely inside GitHub Actions with no external service or account required

### Usage

```yaml
- uses: vaibh123540/Done-Means-Done@v1
