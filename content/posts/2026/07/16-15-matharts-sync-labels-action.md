---
title: MathArts Sync Labels
date: 2026-07-16 15:02:07 +00:00
tags:
  - matharts
  - GitHub Actions
draft: false
repo: https://github.com/matharts/sync-labels-action
marketplace: https://github.com/marketplace/actions/matharts-sync-labels
version: v1.5.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  MathArts Sync Labels 是一个 GitHub Actions 动作，用于同步组织内多个仓库的标签。它使用一份标签清单和一份所有权策略，确保只有管理员声明为保留或管理的标签能够被更新、删除或重命名。Action 默认预览变更并只操作策略允许的操作，可以离线校验配置。
---


Version updated for **https://github.com/matharts/sync-labels-action** to version **v1.5.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/matharts-sync-labels) to find the latest changes.

## Action Summary

MathArts Sync Labels 是一个 GitHub Actions 动作，用于同步组织内多个仓库的标签。它使用一份标签清单和一份所有权策略，确保只有管理员声明为保留或管理的标签能够被更新、删除或重命名。Action 默认预览变更并只操作策略允许的操作，可以离线校验配置。

## What's Changed

## 仓库范围与离线校验

- 新增可选的 `repositories.exclude` 策略；未配置时保持原有仓库选择行为。
- 仓库范围按固定顺序应用：全部仓库或 `repositories.include`，然后是 `repositories.exclude`，最后是可选的 `repository` input。
- 在访问 GitHub 前拒绝重叠、重复、空或无效的仓库选择。
- 新增 `validate_only` Action input，无需 GitHub 凭据或网络访问即可校验标签和仓库策略文件。
- 新增 `pnpm validate:config`，复用 Action 使用的 `GovernanceConfig` 规则。
- 保持 v1.4 inputs、outputs、默认 dry-run 行为、删除安全、重试行为、部分失败计数和 Unicode 处理不变。
- 明确 `changed` 在 dry-run 模式报告计划变更，在写入模式报告已完成的变更。
- 通过全组织排除 dry-run、无凭据离线校验、非法策略一致性及现有 workflow 兼容性验证候选版本。
- 将稳定错误分类、失败仓库输出、可归档计划文件、并发、缓存和批处理推迟到后续版本。
- 建议审核发布提交并固定其完整 SHA，而不是可移动版本标签。

验证：`pnpm check`、Node.js 24 CI、可复现 `dist/index.js` bundle 比对、Actionlint、CodeQL、[全组织排除 dry-run](https://github.com/matharts/sync-labels-action/actions/runs/29458270313)、[发布演练](https://github.com/matharts/sync-labels-action/issues/32#issuecomment-4986231343)、[发布后测试](https://github.com/matharts/sync-labels-action/actions/runs/29458816128)及[发布后组织预览](https://github.com/matharts/sync-labels-action/actions/runs/29458817745)均通过。

