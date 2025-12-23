---
title: AI Code Reviewer (AiReviewPR)
date: 2025-12-23 21:17:55 +00:00
tags:
  - kekxv
  - GitHub Actions
draft: false
repo: https://github.com/kekxv/AiReviewPR
marketplace: https://github.com/marketplace/actions/ai-code-reviewer-aireviewpr
version: v0.1.0
dependentsNumber: "?"
---


Version updated for **https://github.com/kekxv/AiReviewPR** to version **v0.1.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-code-reviewer-aireviewpr) to find the latest changes.

## Action Summary

This GitHub Action integrates Gitea and Ollama (open-webui) to automate the review of merged code in pull requests. It provides an offline and secure solution for code review by generating automated comments with AI insights directly on merge requests, without relying on third-party platforms. This action is ideal for teams with restricted network environments or those looking to retain full control over their code review data.

## Release notes

## What's Changed
* fix: windows git  by @kekxv in https://github.com/kekxv/AiReviewPR/pull/11
* feat: enable accurate inline file reviews and align with Gitea API by @kekxv in https://github.com/kekxv/AiReviewPR/pull/12


**Full Changelog**: https://github.com/kekxv/AiReviewPR/compare/v0.0.7...v0.1.0


## how use

```actions.yaml
name: ai-reviews

on:
  pull_request:
    types: [opened, synchronize]

jobs:
  review:
    name: Review PR
    runs-on: ubuntu-latest

    steps:
      - name: Checkout code
        uses: actions/checkout@v4
        with:
          fetch-depth: 0
      - name: Review code
        uses: kekxv/AiReviewPR@v0.1.0
        with:
          model: 'devstral-small-2:24b'
          host: ${{ vars.OLLAMA_HOST }}
          ai_token: ${{ secrets.AI_TOKEN }}
          REVIEW_PULL_REQUEST: false
          exclude_files: |
            ^.+\.md
            test2\.js
```
