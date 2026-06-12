---
title: AI PR Reviewer (by Misaki)
date: 2026-06-12 15:19:40 +00:00
tags:
  - shinkawamisaki
  - GitHub Actions
draft: false
repo: https://github.com/shinkawamisaki/ai-pr-reviewer-action
marketplace: https://github.com/marketplace/actions/ai-pr-reviewer-by-misaki
version: v3.0.0
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/shinkawamisaki/ai-pr-reviewer-action** to version **v3.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-pr-reviewer-by-misaki) to find the latest changes.

## What's Changed

セキュリティゲートとしての構造強化リリース。詳細は [README の Changelog](https://github.com/shinkawamisaki/ai-pr-reviewer-action#変更履歴-changelog) と [PR #4](https://github.com/shinkawamisaki/ai-pr-reviewer-action/pull/4) を参照。

## ハイライト

- **[Breaking] Fail-Closed 判定**: 合格は `RESULT: PASS` の明示一致のみ。判定不能（インジェクション成功・形式逸脱・API障害）は `strict_verify: 'true'`（デフォルト）でブロック
- **[Breaking] 審査基準を PR の base コミットから取得**: `rules_file` / `active_rules_file` / `prompt_file`。PR で新規追加した基準ファイルは採用されず次の PR から有効（自己参照の遮断）
- `<diff>` デリミタ + 指示0 によるプロンプトインジェクション対策
- レビュープロンプトの外部テンプレート化（`prompt_file` で差し替え可・eval と本番の同一プロンプト共有が可能に）
- 判例ファイル対応（`active_rules_file`、ルールより優先適用）
- Commit Status 投稿（要 `statuses: write`）。Draft PR の FAIL は **Pending** とし、draft→ready のすり抜けを防止
- workspace フォールバックのパス封じ込め（絶対パス・`../` 拒否）
- マスク誤検知の修正（変数参照 `${VAR}` 等を保護）

## 移行ガイド（v2 → v3）

1. ワークフローの permissions に `statuses: write` を追加
2. `uses: shinkawamisaki/ai-pr-reviewer-action@v3` に更新
3. 強制ゲートにする場合は Status コンテキスト `AI PR Reviewer` を必須チェックに指定
4. 旧来の fail-open 挙動が必要な場合のみ `strict_verify: 'false'`
