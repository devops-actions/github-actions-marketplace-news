---
title: Heisenberg CI Failure Analysis
date: 2026-03-30 14:14:22 +00:00
tags:
  - kamilpajak
  - GitHub Actions
draft: false
repo: https://github.com/kamilpajak/heisenberg
marketplace: https://github.com/marketplace/actions/heisenberg-ci-failure-analysis
version: v0.3.0
dependentsNumber: "0"
actionType: Docker
---


Version updated for **https://github.com/kamilpajak/heisenberg** to version **v0.3.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/heisenberg-ci-failure-analysis) to find the latest changes.

## Action Summary

Heisenberg is an AI-powered GitHub Action designed to analyze CI pipeline failures by reviewing logs, artifacts, and source code to provide structured root-cause analysis (RCA) reports. It automates the identification of failure causes, bug locations, and suggested fixes, saving time and effort in debugging complex CI issues. Key features include clustering of multiple failure types and detailed, actionable insights into infrastructure, test, or production-related failures.

## What's Changed

## Changelog
* b1ec54c1a6ed5acd25cf86d5ea98a68cd1bd020b chore(cli): polish output formatting and add compact progress mode (#23)
* 5b814c444300781ce4e4188fe4970ddf184a7780 feat(cli): redesign output with run header, cluster cards, and new flags (#27)
* 11fe691035c04ba108b6e610fe63408cb4117aec feat: DX hardening for OSS launch (Phase 1) (#28)
* d3e4270318dbd9155f484c12dea61d39ce9eed26 feat: add API key authentication and E2E tests
* 5f3f1c4f6127fdb691991783190edfa1aeaba787 feat: add SaaS infrastructure with auth, billing, and dashboard
* 801213384da9625bdfed0251efc2c6cde742fb5c feat: add bug_location classification to RCA (#20) (#24)
* 9f8f34b941f6aba041deeef37193c9dcb2fbabe9 feat: hybrid failure clustering for large CI runs (#26)
* d3b90ce8ff3d91fe90412ce77b7a6d427296d7f8 feat: multi-RCA analyses array, configurable model, eval framework (#25)
* ef13649c8e6c1d9460e868e0911b755d6d13353b feat: persist CLI analysis results to SaaS dashboard
* 0df50891742e45fa31f1730f4c6b5f14ac3a0521 fix(api): filter count by category in ListAnalyses
* 95d3915fa6cd0edd475836a78c2470b473f69679 fix(llm): use fmt.Fprintf instead of WriteString(Sprintf)
* 3deb4ffef3968bde90287b5580a70e91a8fcc86c fix(security): address CR findings — IDOR, RBAC, duplicate detection
* fa2c411937dcb9d56da859544d06124e5c6ea288 fix(test): share container across tests and skip when Docker unavailable
* 747831ba9218a5b066fabc6f5150062a8feea001 fix: add agent loop guardrails for large repos (#19)
* 67a98c92a441af8eb63f7c9385839d512107f874 fix: address SonarCloud quality gate issues
* 1193c2d95ef747edb95fb96c58aa2ccbbbd18131 fix: ensure migrations run before each test package
* d23784c7456f66f1a2e9cf782b262129b6e4272a fix: register test routes without auth middleware
* bfe953a0a73abfce1d53db439be7565882462a06 fix: strengthen circuit breaker with dynamic tool removal (#22)
* 8a2b878ff24f044e75ee3059cc9e926860c4a75e fix: update API tests for edge cases
* e884588c5621ceb0e2e11ae83b9080b1352501b8 refactor(billing): add interfaces for Stripe SDK testability
* bd4caec765c9a766d88204f3aad772dac9c7fd4c refactor: extract common patterns to reduce code duplication
* 65a6237a2ca019a29fa975445ae625211871ff26 refactor: improve package naming for clarity
* 52b8f69f538f71dfa59fb0bdee5da42d5ba43cec test(api): add RBAC tests for API key management
* fdf2f25b16ff50710836ec175dde46f72a8bcef5 test(billing): add unit tests for usage checker with mocks
* 4c970d28ced5b072efae95e34176e7742ad99675 test(dashboard): add SSE emitter tests
* d26e4ecae1b7640944f31a54b54181508d9b03b8 test(github): add ListDirectory tests for coverage


