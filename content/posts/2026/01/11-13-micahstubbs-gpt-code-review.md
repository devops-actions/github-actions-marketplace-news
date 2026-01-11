---
title: GPT 5.x PR Reviewer
date: 2026-01-11 13:19:55 +00:00
tags:
  - micahstubbs
  - GitHub Actions
draft: false
repo: https://github.com/micahstubbs/gpt-code-review
marketplace: https://github.com/marketplace/actions/gpt-5-x-pr-reviewer
version: v3.3.0
dependentsNumber: "?"
---


Version updated for **https://github.com/micahstubbs/gpt-code-review** to version **v3.3.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gpt-5-x-pr-reviewer) to find the latest changes.

## Action Summary

The **GPT 5.x PR Reviewer** GitHub Action automates code reviews for pull requests using OpenAI's GPT-5.x models. It analyzes code changes, provides AI-generated feedback, and can be triggered automatically on pull request events or via specific comments. This action streamlines the code review process, enhances review quality, and saves time by offering intelligent, consistent insights directly in the pull request discussion.

## Release notes

## What's New

**Batch Posting for Long-Running Reviews** - Never lose review work again

This release fixes a critical issue where GitHub App tokens would expire on large PRs, causing all review work to be lost. Reviews now post comments incrementally, ensuring your work is never lost even on very large PRs.

### How It Works

- **Automatic batching**: Posts review comments every 20 files or every 30 minutes (whichever comes first)
- **Progress tracking**: Each batch shows the batch number, comment count, and elapsed time
- **Early warnings**: Warns at 40 minutes if approaching the 1-hour token expiration limit
- **No work lost**: All review progress is saved incrementally, even if the workflow runs for hours

### Example Output

```
✓ Posted review batch: batch 1 with 18 comments (25m elapsed)
✓ Posted review batch: batch 2 with 15 comments (45m elapsed)
✓ Posted review batch: batch 3 (final) with 8 comments (52m elapsed)
```

### Problem Solved

**Before:** Large PRs with GPT 5.2 Pro + high reasoning effort could take 45+ minutes to process. If the GitHub App token expired after 1 hour, all review work was lost with a "Bad credentials" error.

**After:** Reviews post incrementally during processing. Even if token expires, you get all the reviews that completed before expiration.

### Mitigation Strategies (Documented in README)

1. Use built-in GITHUB_TOKEN (doesn't expire during job, up to 24 hours)
2. Filter files more aggressively with INCLUDE_PATTERNS
3. Use faster models (GPT 5.2 instead of GPT 5.2 Pro, or lower REASONING_EFFORT)
4. Split large PRs into smaller, focused changes

## Technical Details

- Implemented batch posting in `src/bot.ts` with configurable thresholds
- Added elapsed time tracking and warnings
- Updated documentation with GitHub App token limitations
- All 184 tests pass

## References

- [GitHub App Token Expiration (1 hour)](https://github.com/actions/create-github-app-token/issues/121)
- [GITHUB_TOKEN Documentation](https://docs.github.com/en/actions/concepts/security/github_token)

**Full Changelog**: [CHANGELOG.md](https://github.com/micahstubbs/gpt-code-review/blob/main/CHANGELOG.md#330---2026-01-10)
