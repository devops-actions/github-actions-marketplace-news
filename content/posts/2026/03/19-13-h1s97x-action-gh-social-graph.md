---
title: GitHub Social Graph
date: 2026-03-19 13:51:37 +00:00
tags:
  - h1s97x
  - GitHub Actions
draft: false
repo: https://github.com/h1s97x/action-gh-social-graph
marketplace: https://github.com/marketplace/actions/github-social-graph
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/h1s97x/action-gh-social-graph** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/github-social-graph) to find the latest changes.

## Action Summary

This GitHub Action analyzes a user's social graph on GitHub, including followers, mutual connections, collaboration patterns, and programming language distribution. It automates the generation of detailed reports, which can be posted as pull request comments or job summaries, and provides recommendations for potential collaborators. The action is designed to streamline social network analysis for developers and teams, offering insights into their GitHub community and collaboration dynamics.

## Release notes

## [1.0.0] - 2026-03-19

### Added / 新增

- Initial release of GitHub Social Graph Action / GitHub Social Graph Action 首次发布
- Analyze GitHub user social networks (followers, following, mutual connections) / 分析 GitHub 用户社交网络（关注者、关注列表、互相关注）
- Identify top collaborators across repositories / 识别跨仓库顶级协作者
- Recommend developers based on collaboration patterns / 基于协作模式推荐开发者
- Show programming language distribution / 展示编程语言分布
- Post bilingual (EN/ZH) Markdown report as PR comment, auto-updates on re-run / 将中英双语 Markdown 报告发布为 PR 评论，重新运行时自动更新
- Write summary to GitHub Actions Job Summary page / 将摘要写入 GitHub Actions Job Summary 页面
- Outputs: `report`, `total-nodes`, `total-links`, `user-nodes`, `repo-nodes`, `recommendations`
- Bilingual README (English + Chinese) / 中英双语 README
- Bilingual CONTRIBUTING guide / 中英双语贡献指南
- MIT License / MIT 许可证
- CI/CD workflow: auto-rebuild and commit `dist/` on push to `main` / CI/CD 工作流：推送到 main 时自动重新构建并提交 `dist/`

### Fixed / 修复

- TypeScript error: `HeadersInit` not available in Node20 target, replaced with `Record<string, string>` / 修复 Node20 目标下 `HeadersInit` 类型不可用的问题
- TypeScript error: unsafe cast of `ctx.payload.sender`, added `unknown` intermediate cast / 修复 `ctx.payload.sender` 不安全类型转换问题

**Full Changelog**: https://github.com/h1s97x/action-gh-social-graph/commits/v1.0.0
