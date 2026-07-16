---
title: XAI Review
date: 2026-07-16 06:38:52 +00:00
tags:
  - Nikita-Filonov
  - GitHub Actions
draft: false
repo: https://github.com/Nikita-Filonov/ai-review
marketplace: https://github.com/marketplace/actions/xai-review
version: v0.71.0
dependentsNumber: "8"
actionType: Composite
actionSummary: |
  **AI Review** is a code review tool that leverages AI to automate code reviews, improving efficiency and reducing noise in pull requests. It supports multiple LLM providers, integrates with popular version control systems, allows customizable prompts, and includes agent mode for deeper context exploration. The tool runs automatically within CI/CD pipelines, posting inline comments, summary reviews, and AI-generated replies directly into merge requests.
---


Version updated for **https://github.com/Nikita-Filonov/ai-review** to version **v0.71.0**.

- This action is used across all versions by **8** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/xai-review) to find the latest changes.

## Action Summary

**AI Review** is a code review tool that leverages AI to automate code reviews, improving efficiency and reducing noise in pull requests. It supports multiple LLM providers, integrates with popular version control systems, allows customizable prompts, and includes agent mode for deeper context exploration. The tool runs automatically within CI/CD pipelines, posting inline comments, summary reviews, and AI-generated replies directly into merge requests.

## What's Changed

- claude (52a2012)
- fixes (82d9947)
- Merge pull request #111 from dansan/feature/gitlab-batched-inline-comments (28f8a63)
- docs: document the GitLab-only batch_comments setting (fdb169c)
- feat(review): finalize the review pipeline via ReviewService context manager (676aaba)
- feat(gitlab): batch review comments as draft notes behind vcs.batch_comments (87aa23d)
- feat(gitlab): add Draft Notes API support to the GitLab HTTP client (790afba)
- azure openai (978e700)
- Merge pull request #99 from crow-ua/add-support-for-gpt-5-max-complete-tokens (e28ac59)
- renamed files (61d7b2b)
