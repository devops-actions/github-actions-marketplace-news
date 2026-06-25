---
title: skill-switch audit
date: 2026-06-25 22:20:14 +00:00
tags:
  - rtwsvj
  - GitHub Actions
draft: false
repo: https://github.com/rtwsvj/skill-switch
marketplace: https://github.com/marketplace/actions/skill-switch-audit
version: v0.7.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/rtwsvj/skill-switch** to version **v0.7.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skill-switch-audit) to find the latest changes.

## What's Changed

**「让审计在真实 CI 里留得下来」** —— 把已上线的 GitHub Action 从"试一次"变成"团队长期留用"。三件直击安全工具的采用卡点。纯增量,CLI/审计行为与 v0.6.x 一致,**1,629 测试**。

## 亮点
- **基线模式** `audit --write-baseline` / `--baseline`:把已有仓库的当前 finding 存成基线,之后 CI **只对新增问题** fail——加进存量项目不再被一墙历史报错劝退。指纹不含行号,插入/移动代码不会误判为新增。
- **PR 行内注解** `audit --format github`:直接输出 GitHub Actions 工作流注解,**findings 内联标在 PR diff 对应行上**(`::error`/`::warning`),无需 `security-events: write` 权限或 code-scanning 设置。Action 加 `format: github` 选项。
- **规则目录** [`docs/rules.md`](https://github.com/rtwsvj/skill-switch/blob/main/docs/rules.md):列出 audit 可命中的全部 ruleId(80+ 条)按威胁类别分组 + 严重度;同步测试保证不过期。

## 安装
- **CLI(任意平台)**:`npx @rtwsvj/skill-switch audit`
- **GitHub Action**:`uses: rtwsvj/skill-switch@v0.7.0`(详见 [docs/github-action.md](https://github.com/rtwsvj/skill-switch/blob/main/docs/github-action.md))
- **macOS 桌面 App**:下方 `skill-switch_0.7.0_aarch64.dmg`,Developer ID 签名 + Apple 公证,双击即开。

完整变更见 [CHANGELOG](https://github.com/rtwsvj/skill-switch/blob/main/CHANGELOG.md)。

