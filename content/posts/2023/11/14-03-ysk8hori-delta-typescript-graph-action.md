---
title: Delta TypeScript Graph
date: 2023-11-14 03:00:30 +00:00
tags:
  - ysk8hori
  - GitHub Actions
draft: false
repo: ysk8hori/delta-typescript-graph-action
marketplace: https://github.com/marketplace/actions/delta-typescript-graph
version: v0.2.1
dependentsNumber: "1"
---


Version updated for **ysk8hori/delta-typescript-graph-action** to version **v0.2.1**.
- This action is used across all versions by **1** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/delta-typescript-graph) to find the latest changes.

## Release notes

with ChatGPT

🚀 **Release Notes: Delta TypeScript Plugin Action v0.2.1**

**Hey there, awesome coders!** 🌟 Get ready to dive into the coolest update yet for the Delta TypeScript Plugin Action! 🎉

### What's New & Super Cool: 🆕
- **Revolutionized Workflow:** We've ditched the internal cloning process in `delta-typescript-plugin-action`. Why? To make your life easier and your workflows faster with cache utilization! 🚀
- **Mandatory Action/Checkout:** Before you run `delta-typescript-plugin-action`, make sure you execute `action/checkout`. It's a small change with a big impact, ensuring smoother operations! 🛠️

### How to Adapt: 🛠️
Don't sweat it! Here's a quick guide to keep you on track:
```yml
on: pull_request

# Sets permissions of the GITHUB_TOKEN to allow write pull-requests
permissions:
  pull-requests: write

jobs:
  delta-typescript-graph-job:
    runs-on: ubuntu-latest
    name: Delta TypeScript Graph
    steps:
      - name: Checkout
        uses: actions/checkout@b4ffde65f46336ab88eb53be808477a3936bae11 # specify latest version
      - uses: ysk8hori/delta-typescript-graph-action@v0.2.1 # specify latest version
```

### Big Shoutout: 📢
- A massive thanks to @ysk8hori for the stellar update in PR [#6](https://github.com/ysk8hori/delta-typescript-graph-action/pull/6). You rock! 🌟

### Full Details:
Catch all the action and dive into the details with the **[Full Changelog](https://github.com/ysk8hori/delta-typescript-graph-action/compare/v0.2.0...v0.2.1)**.

Stay cool and code on! 🕶️💻

---

🚀 **リリースノート: Delta TypeScript プラグイン アクション v0.2.1**

**こんにちは、素晴らしいコーダーの皆さん！** 🌟 Delta TypeScript プラグイン アクションの最新アップデートをご紹介します！ 🎉

### 新機能 & 超クール: 🆕
- **ワークフローの革新:** `delta-typescript-plugin-action`の内部クローニングプロセスを廃止しました。なぜかって？キャッシュ利用を最適化して、あなたのワークフローをもっと速く、もっと簡単にするためよ！ 🚀
- **Action/Checkoutの必須化:** `delta-typescript-plugin-action`を実行する前に`action/checkout`の実行が必須になりました。小さな変更だけど、運用をスムーズにする大きな影響をもたらすわ！ 🛠️

### 適応方法: 🛠️
心配しないで！トラックを維持するための簡単なガイドを用意したわ：
```yml
on: pull_request

# GITHUB_TOKENの権限を設定してプルリクエストの書き込みを可能にします
permissions:
  pull-requests: write

jobs:
  delta-typescript-graph-job:
    runs-on: ubuntu-latest
    name: Delta TypeScript Graph
    steps:
      - name: Checkout
        uses: actions/checkout@b4ffde65f46336ab88eb53be808477a3936bae11 # 最新バージョンを指定
      - uses: ysk8hori/delta-typescript-graph-action@v0.2.1 # 最新バージョンを指定
```

### 特別な感謝: 📢
- PR [#6](https://github.com/ysk8hori/delta-typescript-graph-action/pull/6) で素晴らしいアップデートを提供してくれた @ysk8hori に大感謝！君は最高だよ！ 🌟

### 詳細情報:
全てのアクションを確認し、詳細に飛び込むには **[フルチェンジログ](https://github.com/ysk8hori/delta-typescript-graph-action/compare/v0.2.0...v0.2.1)** をチェックしてね。

クールにコードを書き続けて！ 🕶️💻
