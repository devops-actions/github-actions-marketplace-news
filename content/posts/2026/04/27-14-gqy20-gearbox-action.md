---
title: Gearbox AI Flywheel
date: 2026-04-27 14:36:25 +00:00
tags:
  - gqy20
  - GitHub Actions
draft: false
repo: https://github.com/gqy20/gearbox-action
marketplace: https://github.com/marketplace/actions/gearbox-ai-flywheel
version: v1.1.5
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/gqy20/gearbox-action** to version **v1.1.5**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gearbox-ai-flywheel) to find the latest changes.

## Action Summary

Gearbox Action is a lightweight and stable GitHub Action designed for automating tasks related to repository management and code workflows. It streamlines processes such as audits, issue tracking, reviews, and dispatching by integrating with Gearbox Agent to prepare environments, clone repositories, and execute predefined actions. This action simplifies complex workflows, supports matrix parallelism, and provides reusable workflow templates for enhanced efficiency.

## What's Changed

## [v1.1.5] - 2026-04-27

### 新增

- 新增 `backlog dispatch flow`，支持从 `ready-to-implement` backlog 按优先级和
  复杂度选择 Issue，并自动创建 PR。
- 新增 P0 dispatch 专用调度 lane，支持高优先级 Issue 的独立调度策略。
- 新增定时 quiet backlog planning，在非活跃时段自动规划 backlog。
- 新增 `cleanup` action，用于清理候选分支。
- 新增 dispatch 失败自动恢复与自动合并能力。
- 新增 `workflow-entry` action，统一 GitHub event 解析（issue number、target repo、
  skip logic）。
- 新增 `matrix` action，标准化 matrix 生成，替代 6 个 workflow 文件中的内联脚本。
- 审计定时触发默认创建 Issue。

### 变更

- 将 `src/gearbox/cli.py` 拆分为 `src/gearbox/commands/` 命令模块。
- 将 `audit-select`、`review-select`、`implement-select` 的重复逻辑收敛到
  `commands/shared.py` 的 `_select_single()` 辅助函数。
- 移除废弃的兼容性路径。
- Dispatch 支持矩阵化并行处理多个 Issue。
- Implement agent 从 action 源码目录运行，artifact 写入 workspace。
- Review 命令通过 PR 评论路由。

### 修复

- 修复 dispatch PR 创建、推送、分支保护的 PAT 凭证问题。
- 修复 dispatch 失败时清理 progress 标签。
- 修复 issue/PR 未合并关闭时恢复 Issue 状态。
- 修复 implement 结果标记为 not ready 的边界条件。
- 修复 dispatch 聚合并行实现时的路径问题。
- 修复 artifact 下载的 single artifact 布局支持。
- 修复 `deptry` 输出解析。
- 修复 matrix action manifest 格式。
- 修复 review 失败时正确报错。
- 修复 `gh review` flags 使用。
- 修复 `has-pr` 标签标记逻辑。
- 修复 dispatch dry-run 状态保持。

