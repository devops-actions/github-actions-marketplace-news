---
title: OpsPilot Review
date: 2026-05-16 21:26:26 +00:00
tags:
  - SuryaMadireddy1
  - GitHub Actions
draft: false
repo: https://github.com/SuryaMadireddy1/opspilot-action
marketplace: https://github.com/marketplace/actions/opspilot-review
version: v1.2.0
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/SuryaMadireddy1/opspilot-action** to version **v1.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/opspilot-review) to find the latest changes.

## Action Summary

OpsPilot is a GitHub Action that integrates with Checkov to analyze changes in Terraform (`.tf`) files within pull requests, identify potential risks, and provide clear, actionable feedback. It leverages an LLM to generate plain-English explanations of security and compliance findings, assigns severity levels, and suggests precise code fixes with HCL snippets, automating the review process and reducing manual effort. This action helps teams understand the production impact of issues and implement fixes quickly and accurately.

## What's Changed

- Merge feature/diff-aware-filtering into main (beada29)
- fix: match checkov /main.tf path against azure_terraform/main.tf key (25b9b2e)
- feat: diff-aware filtering — only surface findings in PR-changed lines (7a46e29)
- Merge feature/inline-suggestions into main (ddb835e)
- chore: revert workflow to use local ./action ref (39b8cdc)
- fix: revert Dockerfile COPY paths to action/ build context (5438b68)
- test: point workflow at feature/inline-suggestions for Groq validation (64fb1db)
- feat: add LLM provider choice (groq, openai, anthropic) (883270e)
- refactor: move action.yml to repo root (a3c21e6)
- docs: update action ref to opspilot-action repo (d1ae539)
