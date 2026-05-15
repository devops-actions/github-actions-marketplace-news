---
title: Writulos Auto-Docs
date: 2026-05-15 14:57:53 +00:00
tags:
  - writulos
  - GitHub Actions
draft: false
repo: https://github.com/writulos/writulos-action
marketplace: https://github.com/marketplace/actions/writulos-auto-docs
version: v1.4
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/writulos/writulos-action** to version **v1.4**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/writulos-auto-docs) to find the latest changes.

## Action Summary

The Writulos Auto-Docs GitHub Action automatically generates structured markdown documentation for code files that have been changed in a repository. It streamlines the documentation process by committing the generated docs to a designated folder on push events or posting a summary of documented files as a comment on pull requests. This action helps developers maintain up-to-date documentation without manual effort, ensuring consistency and saving time.

## What's Changed

- fix: remove writulos.log file — no log file committed to user repos (5fd20de)
- fix: align all env vars to INPUT_* as mapped by action.yml inputs (d04a9cf)
- fix: use INPUT_WRITULOS_API_KEY env var (bf606aa)
- fix: pass repo/branch/token to backend for commitLog (dc351bc)
- fix: align env var names with action.yml INPUT_* convention (1f2bd63)
- feat: modern API commits, writulos.log, clean 429 errors (dac1224)
- Improve error handling for Writulos API response (5826a7d)
- Refactor GitHub Action to use custom input functions (cd2bf6c)
- Remove 'type' field from package.json (e5341c0)
- Update run.js (464c7dc)
