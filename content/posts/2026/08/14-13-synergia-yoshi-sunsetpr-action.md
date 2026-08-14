---
title: SunsetPR AI Model Lifecycle Check
date: 2026-08-14 13:37:55 +00:00
tags:
  - synergia-yoshi
  - GitHub Actions
draft: false
repo: https://github.com/synergia-yoshi/sunsetpr-action
marketplace: https://github.com/marketplace/actions/sunsetpr-ai-model-lifecycle-check
version: v0.3.0
dependentsNumber: "1"
actionType: Node
nodeVersion: 24
actionSummary: |
  SunsetPR is a GitHub Action designed to detect deprecated AI models and API endpoints before their shutdown dates. It provides detailed reports including file and line numbers, shutdown dates, official replacements or migration paths, confidence levels, and provider documentation. The action supports TypeScript, JavaScript, and Python languages and can identify hardcoded model IDs in major SDK call shapes, single-use `const` model IDs passed to supported calls, model IDs assigned to model-named variables, and various configuration files. It reports findings but does not automatically create or merge PRs; reviewers are required to manually confirm the corrections.
  
  This tool helps developers stay informed about upcoming changes in AI models and can assist with migration planning and verification of code changes before potential disruptions.
---


Version updated for **https://github.com/synergia-yoshi/sunsetpr-action** to version **v0.3.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sunsetpr-ai-model-lifecycle-check) to find the latest changes.

## Action Summary

SunsetPR is a GitHub Action designed to detect deprecated AI models and API endpoints before their shutdown dates. It provides detailed reports including file and line numbers, shutdown dates, official replacements or migration paths, confidence levels, and provider documentation. The action supports TypeScript, JavaScript, and Python languages and can identify hardcoded model IDs in major SDK call shapes, single-use `const` model IDs passed to supported calls, model IDs assigned to model-named variables, and various configuration files. It reports findings but does not automatically create or merge PRs; reviewers are required to manually confirm the corrections.

This tool helps developers stay informed about upcoming changes in AI models and can assist with migration planning and verification of code changes before potential disruptions.

## What's Changed

## 日本語

Cohere と xAI の公式ライフサイクル情報を追加しました。通知だけで終わらせず、影響箇所と公式根拠を報告し、修正は確認待ちPRとして扱います。

- 124モデルID・4 API surface
- Cohere/xAI は公式情報に限定し、互換性差分は report-only
- 日本語の導入・安全性説明を追加

詳細はREADMEとMODEL-LIFECYCLE.mdを参照してください。

## English

Adds first-party lifecycle coverage for Cohere and xAI, with conservative report-only replacements and Japanese onboarding documentation.
