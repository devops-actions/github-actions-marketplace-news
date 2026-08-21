---
title: Gua Godot GDScript CI
date: 2026-08-21 14:16:15 +00:00
tags:
  - link1345
  - GitHub Actions
draft: false
repo: https://github.com/link1345/gua-tester
marketplace: https://github.com/marketplace/actions/gua-godot-gdscript-ci
version: v1.3
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action automates the setup and testing of Godot GDScript projects using Gua, a UI testing framework for Godot. It downloads specific Godot binaries and Gua releases, extracts addon assets, copies them into the project, and runs .NET tests that interact with the GUI using Wasm/WebSockets through `Gua.Testing.Godot`. The action is suitable for CI/CD pipelines where developers need to ensure their GDScript projects are compatible with Gua-based UI testing.
---


Version updated for **https://github.com/link1345/gua-tester** to version **v1.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gua-godot-gdscript-ci) to find the latest changes.

## Action Summary

This GitHub Action automates the setup and testing of Godot GDScript projects using Gua, a UI testing framework for Godot. It downloads specific Godot binaries and Gua releases, extracts addon assets, copies them into the project, and runs .NET tests that interact with the GUI using Wasm/WebSockets through `Gua.Testing.Godot`. The action is suitable for CI/CD pipelines where developers need to ensure their GDScript projects are compatible with Gua-based UI testing.

## What's Changed

- Merge pull request #1 from link1345/codex/tag-update (a9ab990)
- Merge branch 'main' into codex/tag-update (f2f2f6e)
- 安定版Guaリリースの取得とGodotインポート検証を追加 (e272e47)
- Update gua-plugin-tag to version 0.15.0 (a0f3276)
- Update Gua Tester action version in README (04de345)
- Guaアドオンの取得を配布版ダウンロードに切り替える (c6064fa)
- README修正 (26203c3)
- ブランド設定を追加 (52dcf81)
- コミットメッセージを生成 (cedd729)
