---
title: PR Insights Labeler
date: 2025-12-02 13:10:16 +00:00
tags:
  - jey3dayo
  - GitHub Actions
draft: false
repo: https://github.com/jey3dayo/pr-insights-labeler
marketplace: https://github.com/marketplace/actions/pr-insights-labeler
version: v1.9.4
dependentsNumber: "?"
---


Version updated for **https://github.com/jey3dayo/pr-insights-labeler** to version **v1.9.4**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pr-insights-labeler) to find the latest changes.

## Release notes

## 🚀 What's New

### ✨ Added

- **Claude Code Command**: `/add-exclude-files` コマンドを追加 - `DEFAULT_EXCLUDES`へのファイル追加を自動化 (#122)
  - 自動パターン正規化 (`**/`プレフィックス自動追加)
  - 重複チェック
  - グループ管理
  - TypeScript型チェック自動実行
  - ドライランモード

- **Exclusion Patterns**: 4つの設定ファイルを除外リストに追加 (#122)
  - `**/.dependency-cruiser.js`
  - `**/.dockerignore`
  - `**/.coderabbit.yaml`
  - `**/.github/actionlint.yaml`

### 📝 Documentation

- advanced usage i18n guidanceの重複削除 (#120)
- 二言語ドキュメントのリフレッシュ (#118)
- ファイル除外例の改善

### 🔧 CI/CD

- 重複したPR labelerワークフローの削除 (#121)

### 🐛 Fixed

- Node.js version compatibility with @eslint/compat@2.0.0 (#117, #116)

### 🔄 Changed

- 依存関係更新と@eslint/compat v2対応 (#115)
- `DEFAULT_EXCLUDES`の可読性向上（カテゴリ別コメント追加）

## 📊 Quality Metrics

- ✅ Lint: Passed
- ✅ Type Check: Passed  
- ✅ Tests: 797 passed
- ✅ Build: Successful

## 🔗 Full Changelog

https://github.com/jey3dayo/pr-insights-labeler/compare/v1.9.3...v1.9.4
