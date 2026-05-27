---
title: Smart Changed Files
date: 2026-05-27 06:34:14 +00:00
tags:
  - HarryVasanth
  - GitHub Actions
draft: false
repo: https://github.com/HarryVasanth/smart-changed-files
marketplace: https://github.com/marketplace/actions/smart-changed-files
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/HarryVasanth/smart-changed-files** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/smart-changed-files) to find the latest changes.

## Action Summary

The **Smart Changed Files Matrix Generator** is a lightweight GitHub Action designed to detect changed files in a repository and output a JSON array for dynamic `matrix` strategies in CI/CD pipelines. It automates the process of identifying modified directories or files, enabling efficient workflows by targeting only the affected components, such as specific applications in a monorepo. Key features include fast execution using Bash and `git`, intelligent handling of nested file changes, exclusion of irrelevant files or folders, and robust handling of edge cases like deleted folders and initial commits.

## What's Changed

## 📝 Smart Changed Files Matrix Generator v1.0.0 
### 🎉 Initial Release: Blazing Fast Matrix Generation (2026-05-26)

### 🚀 Features
- Added intelligent changed files detection specifically optimized for monorepos
- Outputs clean, formatted JSON arrays directly compatible with GitHub Actions `strategy.matrix`
- Provides individual file arrays and a simple boolean `any_changed` output for basic conditional steps
- **[NEW] Monorepo Smart Filtering**: Added `target_folder` input to easily parse deeply nested file changes into their top-level application folders
- **[NEW] Regex Exclusion**: Added `exclude` input to effortlessly ignore documentation (`*.md`), tests, or config changes from triggering full builds
- **[NEW] Custom SHA Comparisons**: Added `base_sha` and `head_sha` inputs with smart defaults to support complex branching strategies

### 🐛 Bug Fixes & Edge Cases Handled
- **[CRITICAL] Ghost-Job Prevention**: Fixed the common pipeline crash where matrix jobs attempt to run on projects or directories that were completely deleted in the pull request. The action verifies physical path existence before adding it to the matrix.
- **Initial Commit Crash**: Solved the fatal error that occurs on a repository's very first push by dynamically diffing against Git's standard empty tree hash if no base SHA is found.

### 🛠️ Optimizations
- **Zero-Dependency Speed**: Built purely as a native Composite Action. It uses native `bash`, `git`, and `jq` directly on the runner to execute in milliseconds, bypassing the typical 10-15 second Node.js or Docker startup penalty.
- **Security & Reliability**: Script is 100% ShellCheck compliant, utilizing secure parameter expansions and robust `awk`/`sed` parsing to safely handle file paths with spaces or special characters.
