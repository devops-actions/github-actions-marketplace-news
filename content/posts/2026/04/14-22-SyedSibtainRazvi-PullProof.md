---
title: PullProof
date: 2026-04-14 22:20:12 +00:00
tags:
  - SyedSibtainRazvi
  - GitHub Actions
draft: false
repo: https://github.com/SyedSibtainRazvi/PullProof
marketplace: https://github.com/marketplace/actions/pullproof
version: v2.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/SyedSibtainRazvi/PullProof** to version **v2.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pullproof) to find the latest changes.

## Action Summary

PullProof is a GitHub Action designed to automatically review documentation and blog post changes in pull requests, offering AI-generated feedback on writing quality, technical accuracy, SEO metadata, structure, and visual elements. It helps developers ensure high-quality, polished content by detecting issues in Markdown files and providing actionable recommendations. Key features include targeted reviews of added lines, structured feedback comments, and updates without generating comment spam.

## What's Changed

### What's New

- **Structured blog review** — rates Metadata & SEO, Technical Accuracy, Writing Quality, Structure & Flow, and Blog Polish
- **Comment updates** — updates the same PR comment on subsequent pushes instead of creating duplicates
- **Configurable model** — new `model` input, defaults to `gpt-4o`

### Fixes
- Fixed patch extraction bug where removed lines could leak into review
- Removed dead code (unused function, premature variable)
- Added patch truncation for large blog posts
- Lower temperature (0.3) for more consistent reviews

### Usage
```yaml
uses: SyedSibtainRazvi/PullProof@v2.0.0
with:
  github_token: ${{ secrets.GITHUB_TOKEN }}
  openai_api_key: ${{ secrets.OPENAI_API_KEY }}
```
