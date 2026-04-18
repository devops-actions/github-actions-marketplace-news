---
title: ai-triage
date: 2026-04-18 06:27:15 +00:00
tags:
  - LautaroOrellano
  - GitHub Actions
draft: false
repo: https://github.com/LautaroOrellano/ai-triage
marketplace: https://github.com/marketplace/actions/ai-triage
version: v1.2.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/LautaroOrellano/ai-triage** to version **v1.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-triage) to find the latest changes.

## Action Summary

The **AI Triage & Discussion Helper** GitHub Action leverages Google Gemini to automate issue management and community support for open-source projects. It provides intelligent features like context-aware issue labeling, accurate responses based on project documentation, and spam prevention by intervening only in stale or unanswered issues. Additionally, it supports multi-language systems, customizable bot names, and operates within Google's free-tier API limits, streamlining project maintenance and reducing manual workload for maintainers.

## What's Changed

### Key improvements:
- AI Duplicate Detection: A real-time detection system that uses Gemini to analyze the semantic context of new Issues. It automatically identifies if a topic is already being discussed, labels the Issue as a duplicate, and references the original thread to centralize the conversation.

- Monthly Zombie Cleanup (Bimodal Mode): A new "deep cleanup" feature to close threads (Issues, PRs, and Discussions) that have been inactive for more than 2 years. It's designed as an on-demand task to optimize resource consumption.

- Dynamic Action Configuration: The auto-close-stale parameter has been added to the action.yml file, allowing users to separate daily triage from monthly maintenance within the same CI/CD pipeline.
