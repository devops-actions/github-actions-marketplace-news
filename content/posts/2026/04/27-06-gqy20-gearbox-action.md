---
title: Gearbox AI Flywheel
date: 2026-04-27 06:37:35 +00:00
tags:
  - gqy20
  - GitHub Actions
draft: false
repo: https://github.com/gqy20/gearbox-action
marketplace: https://github.com/marketplace/actions/gearbox-ai-flywheel
version: v1.1.4
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/gqy20/gearbox-action** to version **v1.1.4**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gearbox-ai-flywheel) to find the latest changes.

## Action Summary

Gearbox Action is a lightweight and stable GitHub Action designed for automating tasks related to repository auditing, backlog management, implementation, review, and publishing workflows. It simplifies the process by preparing the environment, cloning target repositories, performing scans, and leveraging Gearbox Agent for execution. This action is ideal for users seeking streamlined automation without the complexity of custom workflow orchestration.

## What's Changed

## [v1.1.4] - 2026-04-26

### 变更

- 将 Marketplace 根 action 展示名从 `Gearbox` 改为 `Gearbox AI Flywheel`，
  避免 GitHub Marketplace 全站唯一名称校验冲突。

### 修复

- 修复 audit 评论结果步骤中的 shell 引号转义问题，避免 comment event 成功审计后
  在 `uv run --directory` 阶段找不到路径。

