---
title: droast — Dockerfile linter
date: 2026-04-24 13:58:22 +00:00
tags:
  - immanuwell
  - GitHub Actions
draft: false
repo: https://github.com/immanuwell/dockerfile-roast
marketplace: https://github.com/marketplace/actions/droast-dockerfile-linter
version: 1.3.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/immanuwell/dockerfile-roast** to version **1.3.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/droast-dockerfile-linter) to find the latest changes.

## Action Summary

This GitHub Action, "dockerfile-roast," is a Dockerfile linter designed to identify and report bad practices with actionable feedback. It automates the process of validating Dockerfiles, providing inline annotations in pull request diffs or CI pipelines to highlight issues in real time and enforce consistent quality standards. Its key capabilities include real-time linting, configurable rules, severity filtering, and support for multiple output formats, including GitHub Actions annotations and SARIF for advanced security tools.

## What's Changed

- chore: add manual publish script for platform-specific VS Code extension VSIXs (2f4a234)
- feat: publish platform-specific VS Code extension VSIXs with bundled binaries on release (81fea09)
- docs: add VS Code extension link to README (b9229f9)
- chore: update package.json to match publisher ID ImmanuelTikhonov (9d4d9da)
- chore: add marketplace icon to vscode extension (9f4a6db)
- fix: remove debug logging, fix duplicate lint on open (8765e6d)
- fix: flush stdout before process::exit to prevent buffered JSON being discarded (ff83b61)
- fix: remove missing icon reference, add LICENSE to vscode extension (34eb99c)
- feat: add VS Code extension scaffold with real-time Dockerfile linting (2ac8475)
- feat: add stdin support via droast - for unsaved buffer linting (ec81b99)
