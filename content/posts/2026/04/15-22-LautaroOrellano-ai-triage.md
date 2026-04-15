---
title: ai-triage
date: 2026-04-15 22:03:06 +00:00
tags:
  - LautaroOrellano
  - GitHub Actions
draft: false
repo: https://github.com/LautaroOrellano/ai-triage
marketplace: https://github.com/marketplace/actions/ai-triage
version: v1.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/LautaroOrellano/ai-triage** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-triage) to find the latest changes.

## Action Summary

The **AI Triage & Discussion Helper** is a GitHub Action designed to streamline issue management and community support for open-source projects. It automates tasks such as intelligent issue labeling, context-aware responses based on project documentation, and anti-spam lifecycle management, ensuring accurate and efficient user support. Key capabilities include dynamic categorization of issues, conversational replies to user mentions, and delayed responses to unresolved issues, all while leveraging Google's free-tier AI infrastructure for cost efficiency.

## What's Changed

### A bug was fixed through discussions and pull request support was provided

- Added full support for Pull Request analysis and mentoring.
- Fixed a bug causing infinite loops in Discussion threads.
- Improved bot identification logic to prevent duplicate comments.

```yml
on:
  issues:
    types: [opened]
  issue_comment:
    types: [created]
  pull_request:         # <--- add this line
    types: [opened, reopened]      # <--- add this line
  schedule:
    - cron: '0 */3 * * *'
```
