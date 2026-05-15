---
title: Bangladesh Daily News Digest
date: 2026-05-15 22:12:19 +00:00
tags:
  - shidp
  - GitHub Actions
draft: false
repo: https://github.com/shidp/bangladesh-daily-news
marketplace: https://github.com/marketplace/actions/bangladesh-daily-news-digest
version: v6
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/shidp/bangladesh-daily-news** to version **v6**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/bangladesh-daily-news-digest) to find the latest changes.

## Action Summary

The *Bangladesh Daily News Digest Action* is a GitHub Action that automates the daily retrieval, summarization, and email distribution of news from The Daily Star, focusing on prioritized topics like politics and international relations while filtering out less relevant content such as sports or entertainment. It generates concise, topic-prioritized summaries using extractive summarization techniques and delivers them in a formatted HTML email via Gmail SMTP, streamlining the process of staying informed on key Bangladeshi news.

## What's Changed

## 变更

- 🐛 **修复**：文章摘要不再包含版权文字（"Copyright: Any unauthorized use..."）
- 🛠️ **优化**：Action 改为自引用模式，不再依赖外部发布仓库
- 📦 **使用**：`uses: shidp/bangladesh-daily-news@v6`

## 发布说明

此 Action 可直接通过 `uses: shidp/bangladesh-daily-news@v6` 引用。
无需再引用旧的 `shidp/bangladesh-daily-news-action` 仓库。
