---
title: reflint reference-integrity linter
date: 2026-08-16 14:21:41 +00:00
tags:
  - hyuga611
  - GitHub Actions
draft: false
repo: https://github.com/hyuga611/reflint
marketplace: https://github.com/marketplace/actions/reflint-reference-integrity-linter
version: v0.11.0
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  `reflint` is a zero-dependency reference integrity linter for AI agent configuration files, designed to fail PRs when references (like paths or scripts) point at non-existent files. It automates the verification of file existence for `AGENTS.md`, `llms.txt`, and `CLAUDE.md`, providing inline PR annotations and job failures on missing references.
---


Version updated for **https://github.com/hyuga611/reflint** to version **v0.11.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/reflint-reference-integrity-linter) to find the latest changes.

## Action Summary

`reflint` is a zero-dependency reference integrity linter for AI agent configuration files, designed to fail PRs when references (like paths or scripts) point at non-existent files. It automates the verification of file existence for `AGENTS.md`, `llms.txt`, and `CLAUDE.md`, providing inline PR annotations and job failures on missing references.

## What's Changed

既存の利用者に見える変化がひとつあります: **指摘の件数が減ります。**

公開リポジトリ118本（`AGENTS.md` / `CLAUDE.md` を持つもの）で新旧を並べて測った結果は
208件 → 185件。消えた23件はすべてノイズで、**新しく増えた指摘は0件**でした。

減った理由は3つです。

- `pnpm -r build` を「`-r` というスクリプトが無い」と報告していた。script 種の指摘39件のうち16件がこれ。
- `--code-blocks` が、付けても付けなくても同じ結果を返していた。**このリリースで初めて実際に効きます。**
  フェンス内も検査したい場合は明示的に付けてください（118本中10本で結果が変わります）。
- フェンスの開閉判定が実在の文書でずれ、途中から下を全部「コード内」とみなすことがあった。

**減ったのか、見ていないのかを混同しないために**、見送った件数を必ず出すようにしました。

```
reflint: 2 broken references (3 inside code blocks, not checked — run with --code-blocks)
reflint: all references resolve (1 inside code blocks, not checked — run with --code-blocks)
```

`--format json` にも `skipped` が入ります（加算のみ・既存フィールドは不変）。

詳細は [CHANGELOG](https://github.com/hyuga611/reflint/blob/main/CHANGELOG.md) を参照してください。
0.10.0 のエントリも今回あわせて埋めています。

**Full Changelog**: https://github.com/hyuga611/reflint/compare/v0.10.0...v0.11.0
