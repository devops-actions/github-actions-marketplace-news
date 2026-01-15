---
title: Kimi Code Review
date: 2026-01-15 13:21:40 +00:00
tags:
  - xiaoju111a
  - GitHub Actions
draft: false
repo: https://github.com/xiaoju111a/kimi-actions
marketplace: https://github.com/marketplace/actions/kimi-code-review
version: v1.0.3
dependentsNumber: "?"
---


Version updated for **https://github.com/xiaoju111a/kimi-actions** to version **v1.0.3**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/kimi-code-review) to find the latest changes.

## Action Summary

The **Kimi Code Review Action** is a GitHub Action that leverages AI, powered by Kimi (Moonshot AI), to automate code reviews on pull requests. It analyzes code changes, provides comments, suggests improvements, answers specific code-related queries, and applies labels. This action streamlines the code review process, reduces manual effort, and enhances code quality by directly integrating with GitHub workflows.

## Release notes

Pull request overview - AI-generated 2-3 sentence summary describing what the PR does
Reviewed changes - Shows file count and comment count
Collapsible file summary table - AI-generated descriptions for each changed file
Issues found - Severity-coded list with 🔴🟠🟡🔵 icons
Powered by footer - Added to both PR comments and inline comments
✨ Features
Add context_gatherer.py script for intelligent context gathering during review
Add file_summaries field in YAML output for AI to describe each file's changes
Inline comments now include "Powered by Kimi" footer
🐛 Bug Fixes
Fix inline comments not being posted due to strict diff validation
Support custom diff format (## File: path) used by DiffChunker
Relax validation to check file presence instead of exact code matching
Fix summary showing issue descriptions instead of file change descriptions
🎨 Branding
Update icon from 🤖 to 🌗 (moon emoji)
Update Marketplace icon to star with blue color
⚙️ Configuration
Disable auto_review by default - reviews now only trigger via /review command
Translate Chinese references to English in skill files
📝 Documentation
Update README with new branding
Update workflow example with auto_review: 'false'
