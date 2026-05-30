---
title: BanGD PR Review
date: 2026-05-30 21:45:42 +00:00
tags:
  - NeverENG
  - GitHub Actions
draft: false
repo: https://github.com/NeverENG/BanGD-AI-PR-Review-Tool
marketplace: https://github.com/marketplace/actions/bangd-pr-review
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/NeverENG/BanGD-AI-PR-Review-Tool** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/bangd-pr-review) to find the latest changes.

## Action Summary

BanGD is a GitHub Action designed as an AI-powered pull request (PR) review assistant specifically for the BanDB database engine. It automates in-depth, architecture-level PR reviews to identify root causes of issues and propose high-level design solutions, addressing limitations of general-purpose AI reviewers. Key features include domain-specific expertise in database internals, structured and actionable feedback, issue triaging, and seamless GitHub integration with minimal setup.

## What's Changed

数据库内核垂类的 AI PR 评审 Action。

- 架构级评审：根因 → 为何低级解法不够 → 架构方案 → 代价/收益
- 三合一产出：PR 变更总结 + 整体风险 + 逐个架构问题
- 交付：每个架构问题一个 Issue（增量去重）+ 一条 PR 汇总评论（不阻塞合入）
- 渐进式披露按维度加载 rubric/范例省 token；token 用量记录
- 模型可配置（Claude / DeepSeek 等 Anthropic 兼容端点）；弱模型空输出优雅降级

用法见 README。
