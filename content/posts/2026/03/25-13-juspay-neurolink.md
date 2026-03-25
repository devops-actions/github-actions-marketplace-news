---
title: NeuroLink AI
date: 2026-03-25 13:43:35 +00:00
tags:
  - juspay
  - GitHub Actions
draft: false
repo: https://github.com/juspay/neurolink
marketplace: https://github.com/marketplace/actions/neurolink-ai
version: v9.31.0
dependentsNumber: "8"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/juspay/neurolink** to version **v9.31.0**.
- This action is used across all versions by **8** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/neurolink-ai) to find the latest changes.

## Action Summary

NeuroLink is a universal AI integration platform that streamlines the connection between AI providers (e.g., OpenAI, Anthropic, Google) and application endpoints through a consistent API. It automates tasks like multi-provider failover, cost optimization, and tool routing while enabling seamless switching between AI providers and models. Key capabilities include support for 13+ providers, enterprise features such as Redis memory and intelligent routing, and a robust architecture designed for edge-first execution and continuous streaming.

## Release notes

## [9.31.0](https://github.com/juspay/neurolink/compare/v9.30.0...v9.31.0) (2026-03-25)

### Features

* **(client):**  add client SDKs with HTTP client, React hooks, and AI SDK adapter ([610db38](https://github.com/juspay/neurolink/commit/610db38cc2f65ba0f6e2ddb9bfc17c58e2cb8523))
* **(proxy):**  add Claude proxy with multi-account OAuth pooling ([138cf67](https://github.com/juspay/neurolink/commit/138cf6709ce587564907e7ca07e38b39fdc245a8))
* **(tools):**  add per-tool timeout, maxRetries at registration and error category metrics ([9ff1075](https://github.com/juspay/neurolink/commit/9ff1075fc6713bbf3c2f4c717da75b7b698c4eca))

### Bug Fixes

* **(mcp):**  structured circuit breaker errors to prevent AI retry storms ([ac3afe7](https://github.com/juspay/neurolink/commit/ac3afe788a2d75bb7c0d14f0da723ec3205d99ad))
* **(proxy):**  crash recovery with launchd daemon, guard restart, and setup overhaul ([2eb5a36](https://github.com/juspay/neurolink/commit/2eb5a36fcede356d4f9e12550fc314144cea1e3b))
* **(sdk):**  Zod 4 migration, AI SDK v6 upgrade, security hardening, and dependency updates ([042181a](https://github.com/juspay/neurolink/commit/042181aef49e1e8b8b2b762564119d5cc1bbd807))

