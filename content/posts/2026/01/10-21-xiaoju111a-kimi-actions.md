---
title: Kimi Code Review
date: 2026-01-10 21:23:04 +00:00
tags:
  - xiaoju111a
  - GitHub Actions
draft: false
repo: https://github.com/xiaoju111a/kimi-actions
marketplace: https://github.com/marketplace/actions/kimi-code-review
version: v1.0.2
dependentsNumber: "?"
---


Version updated for **https://github.com/xiaoju111a/kimi-actions** to version **v1.0.2**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/kimi-code-review) to find the latest changes.

## Action Summary

The **Kimi Code Review Action** is a GitHub Action that leverages AI from the Kimi platform to automate code reviews. It enhances pull request workflows by providing functionalities such as generating review comments, suggesting code improvements, and answering specific questions about code. This action streamlines the code review process, saving time for developers while ensuring high-quality feedback and insights.

## Release notes

## v1.1.0 Release

### 🎉 New Features

- **Inline Comment Commands** - Use `/ask` directly on code lines to get context-aware answers
- **Copilot-style Review Format** - Review output now uses GitHub's native suggestion syntax with "Comment on lines" UI
- **`/labels` Command** - Auto-generate and apply PR labels based on content

### ✨ Improvements

- Review summary now appears as review body with inline comments (not separate comment)
- `/review` defaults to inline comments mode
- Inline `/ask` replies directly to the original comment thread
- All code blocks now have proper syntax highlighting (diff, python, bash, etc.)
- Simplified workflow configuration

### 🐛 Bug Fixes

- Fixed variable shadowing issue in inline comment handler
- Fixed empty body error when posting reviews
- Fixed lint errors (ambiguous variable names)

### 📝 Documentation

- Added architecture diagram to README
- Updated workflow example to match test configuration
- Simplified command documentation

### Commands

| Command | Description |
|---------|-------------|
| `/review` | Code review with inline comments |
| `/review --incremental` | Review only new commits |
| `/describe` | Auto-generate PR description |
| `/describe --comment` | Generate description as comment |
| `/improve` | Code improvement suggestions |
| `/ask <question>` | Q&A about the PR |
| `/labels` | Auto-generate and apply PR labels |
| `/help` | Show help message |

