---
title: Typst PDF Diff Action
date: 2026-05-17 14:06:01 +00:00
tags:
  - conjikidow
  - GitHub Actions
draft: false
repo: https://github.com/conjikidow/typst-pdf-diff-action
marketplace: https://github.com/marketplace/actions/typst-pdf-diff-action
version: v0.2.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/conjikidow/typst-pdf-diff-action** to version **v0.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/typst-pdf-diff-action) to find the latest changes.

## Action Summary

The **Typst PDF Diff Action** is a GitHub Action designed to automate the process of generating and comparing PDF outputs from Typst documents across different versions or revisions, such as in a pull request workflow. It builds Typst documents from specified base and head revisions, creates visual diff PDFs using the `diff-pdf` tool, and uploads these PDFs as workflow artifacts. Additionally, it can optionally update pull request comments with the generated diff results, streamlining review processes for document changes.

## What's Changed

## Highlights

### Breaking change

For `pull_request` events, the action now compares the head against the **merge-base** of the PR (the commit where the PR branched off the base branch) instead of the current tip of the base branch. Diff PDFs now reflect only the changes introduced by the PR itself, even when other PRs have been merged into the base branch in the meantime.

> [!IMPORTANT]
> **New requirement**: The `gh` CLI must be available on the runner. It is preinstalled on GitHub-hosted runners; self-hosted runners need to install it explicitly before this action runs.

## What's Changed
* fix(resolve-refs): use merge-base as default PR base revision by @conjikidow in https://github.com/conjikidow/typst-pdf-diff-action/pull/117
* chore(release): bump version from 0.1.5 to 0.2.0 by @github-actions[bot] in https://github.com/conjikidow/typst-pdf-diff-action/pull/118


**Full Changelog**: https://github.com/conjikidow/typst-pdf-diff-action/compare/v0.1.5...v0.2.0

