---
title: ai-triage
date: 2026-05-04 06:27:28 +00:00
tags:
  - LautaroOrellano
  - GitHub Actions
draft: false
repo: https://github.com/LautaroOrellano/ai-triage
marketplace: https://github.com/marketplace/actions/ai-triage
version: v1.2.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/LautaroOrellano/ai-triage** to version **v1.2.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-triage) to find the latest changes.

## Action Summary

The AI Triage & Discussion Helper is a GitHub Action designed to streamline the maintenance of open-source repositories by automating issue triage, community support, and repository hygiene. Powered by Google Gemini, it provides context-aware responses based on repository documentation, intelligently labels and manages issues, detects duplicates, and automatically closes stale items to maintain an organized and efficient workflow. Key features include semantic issue analysis, multi-language support, and cost-efficient AI usage, reducing the manual effort required for repository management.

## What's Changed

## Description:

- This major release transforms the AI Triage Bot into a sophisticated repository management tool. Version 1.3.0 introduces advanced AI capabilities to handle duplicates, clean up historical debt, and provide a much more polished interaction strategy for Pull Requests and Discussions.

### What's New in v1.2.1?

- AI Duplicate Detection: Uses Gemini to semantically compare new issues against the last 20 open threads. It automatically labels duplicates and links them to centralize discussions.
- Zombie Auto-Close: A new bimodal execution mode that scans and closes threads inactive for over 2 years (perfect for monthly maintenance).
- Silent PR Strategy: Optimized for mentoring environments. The bot remains silent on Pull Requests unless explicitly mentioned by a user.
- Enhanced Loop Prevention: Robust identification logic across REST and GraphQL APIs to ensure the bot never responds to itself or other automated actions.

Comparison: v1.0.0 vs v1.2.1

### 📊 Comparativa de Versiones

| Feature | v1.0.0 (Legacy) | v1.3.0 (Current) |
| :--- | :--- | :--- |
| **AI Intelligence** | Generic responses. | **Context-Aware (RAG):** Answers based on your specific `README.md` documentation. |
| **Platform Support** | Issues only. | **Full-Stack:** Issues, Discussions, and Pull Requests. |
| **Auto-Triage** | Manual labeling. | **AI Auto-Labeling:** Categorizes issues (bug, enhancement, etc.) automatically. |
| **Repo Health** | No cleanup logic. | **Zombie Auto-Close:** Cleans up threads inactive for 2+ years. |
| **Duplicate Check** | Manual check needed. | **AI Duplicate Finder:** Instant detection and linking of similar issues. |
| **Resilience** | Single AI model. | **Cascading Fallback:** Automatically switches between Gemini models to optimize quotas. |
| **Interaction Style** | Noisy. | **Smart Silence:** Only speaks in PRs when explicitly summoned via `@mention`. |
| **Anti-Loop** | Prone to bot loops. | **Robust ID:** Case-insensitive self-recognition to prevent infinite reply loops. |
| **Localization** | English only. | **Bilingual:** Native support for both English and Spanish. |

### Installation / Update
To use the new features, update your workflow to use the v1 tag or specifically v1.2.1:

```yml
uses: LautaroOrellano/ai-triage@v1
with:
  github-token: ${{ secrets.GITHUB_TOKEN }}
  ai-api-key: ${{ secrets.AI_API_KEY }}
  auto-close-stale: 'true' # Optional: set to true for monthly cleanup runs
```
---
###### Special thanks to the contributors for making this bot a smarter companion for open-source communities! ✨
