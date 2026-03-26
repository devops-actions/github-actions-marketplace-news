---
title: tokount
date: 2026-03-26 14:00:47 +00:00
tags:
  - velox-sh
  - GitHub Actions
draft: false
repo: https://github.com/velox-sh/zox-action
marketplace: https://github.com/marketplace/actions/tokount
version: v1
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/velox-sh/zox-action** to version **v1**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/tokount) to find the latest changes.

## Action Summary

The `tokount-action` GitHub Action automates the process of analyzing codebase statistics, such as counting total lines of code, comments, and blank lines, and exposes these metrics as outputs for further use in workflows. It addresses tasks like maintaining up-to-date lines-of-code badges in repositories and automatically posting code statistics as comments in pull requests. Key capabilities include reusable workflows for badge updates, automated PR stats comments, and integration with pre-commit hooks to streamline codebase analysis.

## Release notes

Initial release of tokount-action.

## What's included

**Marketplace action** (`uses: MihaiStreames/tokount-action@v1`)
Run tokount as a step and get total files, lines, code, comments, and blanks as outputs.

**Reusable workflows**
- `badge.yml` — commits a self-updating lines-of-code badge to your repo on every push
- `pr-stats.yml` — posts a tokount stats comment on every pull request (updates in place, never duplicates)

**pre-commit hook**
Use tokount via the pre-commit framework — prints a line count summary before every commit.

## Requirements
The Docker image (`ghcr.io/mihaistreames/tokount:latest`) is used automatically — no installation needed for the Action and workflows. The pre-commit hook requires `tokount` in PATH.
