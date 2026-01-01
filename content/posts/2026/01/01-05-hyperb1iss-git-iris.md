---
title: Git-Iris Action
date: 2026-01-01 05:35:00 +00:00
tags:
  - hyperb1iss
  - GitHub Actions
draft: false
repo: https://github.com/hyperb1iss/git-iris
marketplace: https://github.com/marketplace/actions/git-iris-action
version: v2.0.3
dependentsNumber: "0"
---


Version updated for **https://github.com/hyperb1iss/git-iris** to version **v2.0.3**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/git-iris-action) to find the latest changes.

## Action Summary

Git-Iris is an intelligent Git companion that automates and enhances version control workflows by analyzing codebases to generate context-aware commit messages, perform detailed code reviews, create changelogs, and draft pull request descriptions and release notes. It streamlines common Git-related tasks, saving time and improving the quality of repository documentation and collaboration. Through its advanced capabilities, such as semantic code analysis and a user-friendly terminal interface, it provides a smarter, more efficient way to manage code changes and project artifacts.

## Release notes

# Release Notes v2.0.3

**Released:** 2025-12-31

This patch release fixes a binary download issue in the GitHub Action that caused installation failures when release asset names varied from the expected pattern.

## 🌟 Highlights

### 🐛 GitHub Action Binary Download Fix
Resolved an installation failure in the GitHub Action caused by release asset naming variations. The download step now uses a wildcard pattern to match asset names and dynamically detects the downloaded filename rather than assuming a fixed naming convention.

## 🔧 GitHub Action

- Add wildcard (`*`) to the `gh release download` pattern to handle varied asset names like `git-iris-linux-amd64` or `git-iris-windows-gnu.exe`
- Dynamically detect downloaded binary filename using `ls` instead of hardcoding the expected name
- Preserve original binary name when moving to `/usr/local/bin/` for correct execution

## Upgrade Notes

- No breaking changes in this release
- The GitHub Action fix applies automatically—no changes needed in your workflow files
- If you previously experienced "file not found" errors during action runs, this release resolves those failures

