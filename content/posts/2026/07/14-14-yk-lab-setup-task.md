---
title: Install Task
date: 2026-07-14 14:55:13 +00:00
tags:
  - yk-lab
  - GitHub Actions
draft: false
repo: https://github.com/yk-lab/setup-task
marketplace: https://github.com/marketplace/actions/install-task
version: v1.1.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  The setup-task GitHub Action automates the installation of the Task binary onto the PATH, ensuring secure and reliable downloads with checksum verification and host-pinning. It uses authenticated requests by default and retries transient network failures with exponential backoff to handle potential issues during installation. The action is designed to be a drop-in replacement for arduino/setup-task, supporting versioning and architecture customization options while maintaining compatibility with the Node 24 runtime.
---


Version updated for **https://github.com/yk-lab/setup-task** to version **v1.1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/install-task) to find the latest changes.

## Action Summary

The setup-task GitHub Action automates the installation of the Task binary onto the PATH, ensuring secure and reliable downloads with checksum verification and host-pinning. It uses authenticated requests by default and retries transient network failures with exponential backoff to handle potential issues during installation. The action is designed to be a drop-in replacement for arduino/setup-task, supporting versioning and architecture customization options while maintaining compatibility with the Node 24 runtime.

## What's Changed

## What's Changed
* feat: setup-task GitHub Action の初回実装 by @yk-lab in https://github.com/yk-lab/setup-task/pull/6
* docs: コミュニティヘルスファイルを追加 by @yk-lab in https://github.com/yk-lab/setup-task/pull/17
* docs: README にステータスバッジを追加 by @yk-lab in https://github.com/yk-lab/setup-task/pull/20
* build(deps): Bump vite and vitest by @dependabot[bot] in https://github.com/yk-lab/setup-task/pull/19
* build(deps): Bump esbuild and vitest by @dependabot[bot] in https://github.com/yk-lab/setup-task/pull/18
* build(deps): Bump actions/setup-node from 4 to 6 by @dependabot[bot] in https://github.com/yk-lab/setup-task/pull/10
* build(deps-dev): Bump @eslint/js from 9.39.4 to 10.0.1 by @dependabot[bot] in https://github.com/yk-lab/setup-task/pull/15
* build(deps-dev): Bump vitest from 2.1.9 to 4.1.9 by @dependabot[bot] in https://github.com/yk-lab/setup-task/pull/14
* build(deps): Bump actions/checkout from 4 to 6 by @dependabot[bot] in https://github.com/yk-lab/setup-task/pull/11
* build(deps-dev): Bump eslint from 9.39.4 to 10.5.0 by @dependabot[bot] in https://github.com/yk-lab/setup-task/pull/13
* ci: GitHub Actions を SHA ピンに固定 by @yk-lab in https://github.com/yk-lab/setup-task/pull/21
* build(deps): Bump the actions-toolkit group across 1 directory with 2 updates by @dependabot[bot] in https://github.com/yk-lab/setup-task/pull/12
* build(deps-dev): Bump @vercel/ncc from 0.38.4 to 0.44.0 by @dependabot[bot] in https://github.com/yk-lab/setup-task/pull/16
* fix(security): repo-token を core.setSecret でマスクする by @yk-lab in https://github.com/yk-lab/setup-task/pull/24
* test: withRetry のユニットテストを追加する by @yk-lab in https://github.com/yk-lab/setup-task/pull/25
* test: fetchJson の content-type ガードと createReleaseApi を検証 by @yk-lab in https://github.com/yk-lab/setup-task/pull/26
* test: checksum 改ざん検出の統合テストと self-test 強化 by @yk-lab in https://github.com/yk-lab/setup-task/pull/27
* ci: Codecov でカバレッジ/テスト結果を OIDC アップロードする by @yk-lab in https://github.com/yk-lab/setup-task/pull/28
* test: cache-hit 経路の self-test を追加する by @yk-lab in https://github.com/yk-lab/setup-task/pull/29
* fix: レンジ指定で tool-cache を GitHub 解決より優先する by @yk-lab in https://github.com/yk-lab/setup-task/pull/30
* chore: パッケージマネージャを npm から pnpm へ移行 by @yk-lab in https://github.com/yk-lab/setup-task/pull/34
* build(deps): Bump actions/checkout from 6.0.3 to 7.0.0 by @dependabot[bot] in https://github.com/yk-lab/setup-task/pull/31
* build(deps-dev): Bump typescript from 5.9.3 to 6.0.3 by @dependabot[bot] in https://github.com/yk-lab/setup-task/pull/32
* build(deps-dev): @types/node を ^24 に揃える by @yk-lab in https://github.com/yk-lab/setup-task/pull/35
* chore: dist/ を main から外しリリース時ビルド方式へ by @yk-lab in https://github.com/yk-lab/setup-task/pull/36
* ci: Codecov PR コメントを有効化 by @yk-lab in https://github.com/yk-lab/setup-task/pull/46
* ci: Codecov PR コメントをカバレッジ変動時のみ表示 by @yk-lab in https://github.com/yk-lab/setup-task/pull/47
* docs: TODO.md から完了した #8 を移動 by @yk-lab in https://github.com/yk-lab/setup-task/pull/48
* ci: .md のみ変更時は重い CI をスキップしつつ required check を維持 by @yk-lab in https://github.com/yk-lab/setup-task/pull/49
* feat: ジョブサマリに導入結果を出力（NFR-5） by @yk-lab in https://github.com/yk-lab/setup-task/pull/50
* feat: リトライ回数・間隔を input 化（FR-4） by @yk-lab in https://github.com/yk-lab/setup-task/pull/51
* chore: 重複した checksum 改ざんテストを統合（#43） by @yk-lab in https://github.com/yk-lab/setup-task/pull/52
* feat: 取得ホスト/リダイレクト先を検証（NFR-1） by @yk-lab in https://github.com/yk-lab/setup-task/pull/53
* feat: proxy 環境で全 fetch を proxy 経由にする（#54） by @yk-lab in https://github.com/yk-lab/setup-task/pull/57
* docs: テスト規約を stub-fetch unit test の実態に合わせる（#55） by @yk-lab in https://github.com/yk-lab/setup-task/pull/58
* ci: paths-filter で root 直下の .md も docs 扱いにする（#59） by @yk-lab in https://github.com/yk-lab/setup-task/pull/60
* feat: 取得ボディにサイズ上限とタイムアウトを設ける（#56） by @yk-lab in https://github.com/yk-lab/setup-task/pull/61
* test: platform.test.ts を §9 全 os/arch 組合せに拡張（#41） by @yk-lab in https://github.com/yk-lab/setup-task/pull/62
* ci: ワークフロー静的解析（actionlint / zizmor）を追加（#23） by @yk-lab in https://github.com/yk-lab/setup-task/pull/68
* build(deps): Bump dorny/paths-filter from 3.0.2 to 4.0.1 by @dependabot[bot] in https://github.com/yk-lab/setup-task/pull/64
* chore: ESLint から Biome へ一元化（#45） by @yk-lab in https://github.com/yk-lab/setup-task/pull/70
* build(deps): Bump crate-ci/typos from 1.31.1 to 1.47.2 by @dependabot[bot] in https://github.com/yk-lab/setup-task/pull/63
* build(deps): Bump semver from 7.8.4 to 7.8.5 by @dependabot[bot] in https://github.com/yk-lab/setup-task/pull/67
* docs: 移行ガイド拡充 + セキュア路線へポジショニング見直し（#38 / #73） by @yk-lab in https://github.com/yk-lab/setup-task/pull/72
* chore: lefthook で pre-push に CI 相当チェックを仕込む（#9） by @yk-lab in https://github.com/yk-lab/setup-task/pull/71
* chore: TODO.md を GitHub Issues へのポインタに極小化 by @yk-lab in https://github.com/yk-lab/setup-task/pull/74
* build(deps): Bump undici from 6.27.0 to 8.5.0 by @dependabot[bot] in https://github.com/yk-lab/setup-task/pull/65
* feat: リリース自動化ワークフローを追加（#37） by @yk-lab in https://github.com/yk-lab/setup-task/pull/75
* fix: action 名を Marketplace で一意な "Setup go-task" に変更 by @yk-lab in https://github.com/yk-lab/setup-task/pull/76
* chore: action 名を "Install Task" に変更（Marketplace 一意性） by @yk-lab in https://github.com/yk-lab/setup-task/pull/77
* feat: 失敗時もジョブサマリに落ちたフェーズ+理由を出力（#78） by @yk-lab in https://github.com/yk-lab/setup-task/pull/85
* build(deps): Bump undici from 8.5.0 to 8.7.0 by @dependabot[bot] in https://github.com/yk-lab/setup-task/pull/84
* build(deps-dev): Bump @vitest/coverage-v8 from 4.1.9 to 4.1.10 by @dependabot[bot] in https://github.com/yk-lab/setup-task/pull/83
* build(deps): Bump dorny/paths-filter from 4.0.1 to 4.0.2 by @dependabot[bot] in https://github.com/yk-lab/setup-task/pull/81
* build(deps-dev): Bump vitest from 4.1.9 to 4.1.10 by @dependabot[bot] in https://github.com/yk-lab/setup-task/pull/82
* build(deps): Bump crate-ci/typos from 1.47.2 to 1.48.0 by @dependabot[bot] in https://github.com/yk-lab/setup-task/pull/80
* build(deps-dev): Bump @vercel/ncc from 0.44.0 to 0.44.1 by @dependabot[bot] in https://github.com/yk-lab/setup-task/pull/79
* docs: 設計判断を ADR 化し日本語仕様書を撤去、FR-N タグを inline 化 by @yk-lab in https://github.com/yk-lab/setup-task/pull/89
* ci(deps): dependabot で vitest 系をグループ化（lockstep 維持） by @yk-lab in https://github.com/yk-lab/setup-task/pull/86
* fix: リリース成果物を self-contained 化（--source-map 除去 + バンドル検証ガード） by @yk-lab in https://github.com/yk-lab/setup-task/pull/92

## New Contributors
* @yk-lab made their first contribution in https://github.com/yk-lab/setup-task/pull/6
* @dependabot[bot] made their first contribution in https://github.com/yk-lab/setup-task/pull/19

**Full Changelog**: https://github.com/yk-lab/setup-task/commits/v1.1.1
