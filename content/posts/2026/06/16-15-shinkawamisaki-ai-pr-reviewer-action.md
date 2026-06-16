---
title: AI PR Reviewer (by Misaki)
date: 2026-06-16 15:47:25 +00:00
tags:
  - shinkawamisaki
  - GitHub Actions
draft: false
repo: https://github.com/shinkawamisaki/ai-pr-reviewer-action
marketplace: https://github.com/marketplace/actions/ai-pr-reviewer-by-misaki
version: v3.0.1
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/shinkawamisaki/ai-pr-reviewer-action** to version **v3.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-pr-reviewer-by-misaki) to find the latest changes.

## What's Changed

パッチリリース。審査基準の base 取得で、恒久エラー時に head フォールバックしていた自己参照遮断の穴を塞ぐ（[PR #5](https://github.com/shinkawamisaki/ai-pr-reviewer-action/pull/5)）。

- `429/5xx` と `requests.RequestException`（通信・タイムアウト）のみ head フォールバック
- `401/403`・その他 4xx、および想定外の例外は head 不採用＝安全側（fail-closed）
- 既存の workspace パス封じ込め（realpath + 配下チェック）は維持

破壊的変更なし。v3.0.0 からの推奨アップグレード。
