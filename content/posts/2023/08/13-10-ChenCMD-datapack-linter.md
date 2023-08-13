---
title: datapack-linter
date: 2023-08-13 10:54:54 +00:00
tags:
  - ChenCMD
  - GitHub Actions
draft: false
repo: ChenCMD/datapack-linter
marketplace: https://github.com/marketplace/actions/datapack-linter
version: v2.0.0
dependentsNumber: 31
---


Version updated for **ChenCMD/datapack-linter** to version **v2.0.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **31** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/datapack-linter) to find the latest changes.

## Release notes

# v2.0.0 (2023.08.13)
## 💥 破壊的変更 / Breaking Changes
- オプション項目 `outputDefine` を削除しました。  
  Option item `outputDefine` has been removed.
- オプション項目 `notOutputSuccess`, `checkAlwaysAllFile` の命名を変更しました。  
  実際の挙動には変更はありません。
  Renamed option items `notOutputSuccess` and `checkAlwaysAllFile`.  
  The actual behavior is unchanged.
  - `notOutputSuccess` -> `muteSuccessResult`
  - `checkAlwaysAllFile` -> `alwaysCheckAllFile`

## ✨ 新機能 / New Features
- オプション項目 `lintDirectory` を追加しました。  
  チェックを行うディレクトリを変更するためのオプションです。詳細は README を確認してください。
  Option item `lintDirectory` was added.  
  This option is to change the directory to check. See README for details.
- オプション項目 `configPath` を追加しました。
  読み込むコンフィグファイルを変更するためのオプションです。詳細は README を確認してください。
  Option `configPath` was added.  
  Option to change the config file to be read. Check README for details.

## 🐛 バグ修正 / Bug fixes
- 削除されたファイルのエラーを報告し続ける問題を修正しました。
  Fixed problem with continued reporting of deleted file errors.
- 1.19.4 以上のバージョンで追加 / 変更された NBT のデータに対して警告が発生する問題を修正しました。[^1]
  Fixed a problem with warnings for NBT data added/changed in versions 1.19.4 and above.[^1]
- キャッシュが読み込まれるべき状況下でキャッシュが読み込まれない問題を修正しました。
  Fixed problem with cache not being loaded in situations where cache should be loaded.

---

[^1]: この問題は本質的には Datapack-Linter ではなく利用している Datapack Language Server の問題ですが、暫定的な対処が可能だったため修正を行いました。

      This problem is essentially a problem with the Datapack Language Server we are using, not Datapack-Linter, but we were able to work around it temporarily and have fixed it.
