---
title: Pi Review Agent
date: 2026-06-28 14:49:49 +00:00
tags:
  - sun-praise
  - GitHub Actions
draft: false
repo: https://github.com/sun-praise/pi-review-agent
marketplace: https://github.com/marketplace/actions/pi-review-agent
version: v1.1.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/sun-praise/pi-review-agent** to version **v1.1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pi-review-agent) to find the latest changes.

## What's Changed

## v1.1.1

### Fixed

- **PR 评论不再被后续 review 轮次覆盖**。此前 `postPrComment` 用单一 marker 找到任意旧评论就 PATCH,导致 PR review 迭代时(用户基于第一轮反馈 push 修复 → 触发第二轮 review),第二轮的内容悄悄覆盖第一轮,体感像"第二轮没发评论"。现在评论里追加第二行 marker 嵌入 PR head SHA,仅在 SHA 匹配时 update(同 commit 重跑去重),新 commit 新建评论(迭代历史保留)。旧评论(无 SHA 行)不被命中,保留共存。 (#7)

### Changed

- `actions/cache` `v4` → `v5`,`actions/checkout` `v4` → `v5`(GitHub 自 2025-09-19 起 deprecate Node 20 runner,v5 targeting Node 24)。 (#8)

**Full changelog**: https://github.com/sun-praise/pi-review-agent/compare/v1.1.0...v1.1.1

