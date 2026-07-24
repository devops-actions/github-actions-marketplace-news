---
title: droast — Dockerfile linter
date: 2026-07-24 19:17:17 +00:00
tags:
  - immanuwell
  - GitHub Actions
draft: false
repo: https://github.com/immanuwell/dockerfile-roast
marketplace: https://github.com/marketplace/actions/droast-dockerfile-linter
version: 1.4.10
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  droast is an opinionated Dockerfile linter that catches bad practices and reports them in a blunt manner. It supports various features such as parsing heredocs, handling parser directives, shell forms, BuildKit flags, Windows paths, and PowerShell, and provides real-time feedback with inline squiggles in VS Code and lint-on-save for Neovim users.
---


Version updated for **https://github.com/immanuwell/dockerfile-roast** to version **1.4.10**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/droast-dockerfile-linter) to find the latest changes.

## Action Summary

droast is an opinionated Dockerfile linter that catches bad practices and reports them in a blunt manner. It supports various features such as parsing heredocs, handling parser directives, shell forms, BuildKit flags, Windows paths, and PowerShell, and provides real-time feedback with inline squiggles in VS Code and lint-on-save for Neovim users.

## What's Changed

- chore: release version 1.4.10 (6e9b82c)
- fix: handle dynamic images and modern Dockerfile syntax (cd2c37e)
- chore: release version 1.4.9 (a6b3c09)
- fix: resume interrupted release preparation (0759a95)
- fix: honor pip cache environment and synchronize release integrations (fa83565)
- fix: skip DF023 for final unnamed stage (266abe8)
- ci: skip VS Code publish without Marketplace token (bf12b21)
- chore: automate release preparation and tagging (3e686f6)
- chore: release version 1.4.8 (2b5b6bb)
- fix: detect unprotected RUN pipelines after set options (65b5c43)
