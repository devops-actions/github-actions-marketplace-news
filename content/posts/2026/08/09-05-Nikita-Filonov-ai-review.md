---
title: XAI Review
date: 2026-08-09 05:56:47 +00:00
tags:
  - Nikita-Filonov
  - GitHub Actions
draft: false
repo: https://github.com/Nikita-Filonov/ai-review
marketplace: https://github.com/marketplace/actions/xai-review
version: v0.76.0
dependentsNumber: "8"
actionType: Composite
actionSummary: |
  AI Review is a developer tool that automates AI-powered code reviews in your CI/CD pipeline, providing inline comments, summary reviews, and AI-generated replies directly inside merge requests. It supports multiple LLM providers, VCS integration, customizable prompts, agent mode, and flexible configuration options, running client-side without proxying or inspecting requests.
---


Version updated for **https://github.com/Nikita-Filonov/ai-review** to version **v0.76.0**.

- This action is used across all versions by **8** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/xai-review) to find the latest changes.

## Action Summary

AI Review is a developer tool that automates AI-powered code reviews in your CI/CD pipeline, providing inline comments, summary reviews, and AI-generated replies directly inside merge requests. It supports multiple LLM providers, VCS integration, customizable prompts, agent mode, and flexible configuration options, running client-side without proxying or inspecting requests.

## What's Changed

- openai (81a1242)
- json (c9fabe9)
- git (983de68)
- up version (8f9c85c)
- Merge pull request #118 from dansan/fix/clear-summary-inline-fallback (a8ce69a)
- Update pyproject.toml (d4acc01)
- gitlab (826fc99)
- Merge pull request #117 from dansan/feature/gitlab-draft-note-hygiene (a80c7ce)
- fix(review): clear inline-fallback comments alongside summary comments (f2c6237)
- fix(http): do not retry the non-idempotent draft-note bulk publish (93490a5)
