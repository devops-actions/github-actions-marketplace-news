---
title: XAI Review
date: 2026-07-15 06:55:14 +00:00
tags:
  - Nikita-Filonov
  - GitHub Actions
draft: false
repo: https://github.com/Nikita-Filonov/ai-review
marketplace: https://github.com/marketplace/actions/xai-review
version: v0.70.0
dependentsNumber: "8"
actionType: Composite
actionSummary: |
  **AI Review** is an AI-powered code review tool that automates the review process, using LLMs to identify potential improvements in code quality and consistency. It integrates seamlessly with popular version control systems like GitLab, GitHub, and Bitbucket, allowing teams to focus on code development rather than managing reviews manually. With customizable prompts and agent mode, it can explore the repository for deeper insights before generating detailed reviews, making the process faster and more efficient.
---


Version updated for **https://github.com/Nikita-Filonov/ai-review** to version **v0.70.0**.

- This action is used across all versions by **8** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/xai-review) to find the latest changes.

## Action Summary

**AI Review** is an AI-powered code review tool that automates the review process, using LLMs to identify potential improvements in code quality and consistency. It integrates seamlessly with popular version control systems like GitLab, GitHub, and Bitbucket, allowing teams to focus on code development rather than managing reviews manually. With customizable prompts and agent mode, it can explore the repository for deeper insights before generating detailed reviews, making the process faster and more efficient.

## What's Changed

- fixes (82d9947)
- Merge pull request #111 from dansan/feature/gitlab-batched-inline-comments (28f8a63)
- docs: document the GitLab-only batch_comments setting (fdb169c)
- feat(review): finalize the review pipeline via ReviewService context manager (676aaba)
- feat(gitlab): batch review comments as draft notes behind vcs.batch_comments (87aa23d)
- feat(gitlab): add Draft Notes API support to the GitLab HTTP client (790afba)
- azure openai (978e700)
- Merge pull request #99 from crow-ua/add-support-for-gpt-5-max-complete-tokens (e28ac59)
- renamed files (61d7b2b)
- bitbucket server (1bbc1d8)
