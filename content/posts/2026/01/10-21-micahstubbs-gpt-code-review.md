---
title: GPT 5.x PR Reviewer
date: 2026-01-10 21:23:32 +00:00
tags:
  - micahstubbs
  - GitHub Actions
draft: false
repo: https://github.com/micahstubbs/gpt-code-review
marketplace: https://github.com/marketplace/actions/gpt-5-x-pr-reviewer
version: v3.2.0
dependentsNumber: "?"
---


Version updated for **https://github.com/micahstubbs/gpt-code-review** to version **v3.2.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gpt-5-x-pr-reviewer) to find the latest changes.

## Action Summary

The **GPT 5.x PR Reviewer** GitHub Action automates the code review process for pull requests by leveraging OpenAI's GPT models (e.g., GPT-5.2). It analyzes code changes and provides feedback directly in pull request comments, helping teams streamline code reviews and identify potential issues more efficiently. This action supports integration with GitHub workflows and can be customized with a branded bot for tailored review experiences.

## Release notes

## What's New

**Streaming Progress Visibility** - Real-time feedback during code reviews

When using GPT-5.1+ models (gpt-5.1, gpt-5.2, gpt-5.2-pro), code reviews now stream responses with progress updates in GitHub Actions logs:

- 🤖 Starting code review (with model and reasoning effort)
- ⏳ Review in progress (updated every 2 seconds)
- 📝 Generating review (with character count)
- ✅ Review completed

This provides better visibility into what the model is doing during long-running reviews, especially for large files or complex code changes.

## Technical Details

- Implemented streaming support in `codeReviewWithResponsesAPI` and `codeReviewWithResponsesAPINoSchema` methods
- Uses OpenAI Responses API streaming (`stream: true`)
- Progress logging integrated into GitHub Actions output
- All 184 tests pass

**Full Changelog**: [CHANGELOG.md](https://github.com/micahstubbs/gpt-code-review/blob/main/CHANGELOG.md#320---2026-01-10)
