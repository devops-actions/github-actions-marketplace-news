---
title: Rekl0w Vue Doctor
date: 2026-05-16 13:57:46 +00:00
tags:
  - Rekl0w
  - GitHub Actions
draft: false
repo: https://github.com/Rekl0w/vue-doctor
marketplace: https://github.com/marketplace/actions/rekl0w-vue-doctor
version: v0.1.3
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/Rekl0w/vue-doctor** to version **v0.1.3**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rekl0w-vue-doctor) to find the latest changes.

## Action Summary

Vue Doctor is a static analysis tool designed to scan Vue.js codebases and provide a comprehensive health score (0-100) based on security, correctness, performance, accessibility, and architecture. It automates the identification of common issues and provides actionable diagnostics to improve code quality and maintainability, eliminating the need for manual reviews of repetitive mistakes. Key capabilities include compatibility with Vue single-file components, support for custom configuration, and integration with GitHub Actions for CI/CD workflows.

## What's Changed

### Fixed

- GitHub Action pull request comments now render a readable Markdown summary instead of raw ANSI-colored terminal output.
- Vue Doctor PR comments include a score line, summary table, and grouped diagnostics by category.
- The action keeps raw CLI output in workflow logs while using the JSON report for the human-readable PR comment.
- A sanitized fallback strips ANSI escape codes if the JSON report cannot be read.

### Changed

- Updated the documented GitHub Action tag to `Rekl0w/vue-doctor@v0.1.3`.

### Validation

- `npm run check`
- Mocked the GitHub Action comment renderer and verified that the generated Markdown includes grouped diagnostics without ANSI escape codes.

