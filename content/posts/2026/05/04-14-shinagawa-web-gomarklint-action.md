---
title: gomarklint Markdown Linter
date: 2026-05-04 14:44:50 +00:00
tags:
  - shinagawa-web
  - GitHub Actions
draft: false
repo: https://github.com/shinagawa-web/gomarklint-action
marketplace: https://github.com/marketplace/actions/gomarklint-markdown-linter
version: v1.2.0
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/shinagawa-web/gomarklint-action** to version **v1.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gomarklint-markdown-linter) to find the latest changes.

## Action Summary

The `gomarklint-action` is a GitHub Action designed to automate the process of linting Markdown files within a repository, ensuring they adhere to defined style and formatting guidelines. It helps developers maintain consistent documentation standards by identifying and reporting issues in Markdown files during CI workflows. This action has been migrated to the `shinagawa-web/gomarklint` repository for continued updates and support.

## What's Changed

  ## v1.2.0

  First release published to GitHub Marketplace.

  ### What's new since v1.1.0

  - **Go 1.25 support** — upgraded builder base image to `golang:1.25-alpine` to support gomarklint
  v2.15.0+

  ### What's new since v1.0.0

  - **PR comment** — post lint results as a pull request comment; the comment is updated on each
  subsequent run, avoiding duplicates (`comment-on-pr: true`, `github-token` inputs)

  ### Features

  - Lint Markdown files using your `.gomarklint.json` config
  - Fails the build when issues are detected
  - Optional PR comment with lint results
  - Supports all gomarklint rules: formatting, external links, internal fragment links
