---
title: Writulos Auto-Docs
date: 2026-05-03 06:38:50 +00:00
tags:
  - writulos
  - GitHub Actions
draft: false
repo: https://github.com/writulos/writulos-action
marketplace: https://github.com/marketplace/actions/writulos-auto-docs
version: v1.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/writulos/writulos-action** to version **v1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/writulos-auto-docs) to find the latest changes.

## Action Summary

The **Writulos Auto-Docs GitHub Action** automates the generation of structured markdown documentation for code files that are changed in your repository. It solves the problem of maintaining up-to-date documentation by automatically creating and committing documentation files to a designated folder on push events, and providing a summary of newly documented files via bot comments on pull requests. This action leverages the Writulos API to streamline the documentation process and supports multiple programming languages.

## What's Changed

## What's included

- Auto-generates markdown docs for changed files on push and PR
- Commits docs to `docs/` on push, posts a PR comment with file list
- Built-in guards: skips empty files, files over 100KB, and unchanged files
- Configurable file extensions (default: JS, TS, JSX, TSX, PY, Java, Go, Ruby)
- Optional shared secret to protect your endpoint from unauthorised requests

## Usage

See the [README] (https://github.com/Triumphist230/writulos-action#readme) for setup instructions.
