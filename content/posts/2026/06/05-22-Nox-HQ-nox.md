---
title: Nox Security Scanner
date: 2026-06-05 22:40:51 +00:00
tags:
  - Nox-HQ
  - GitHub Actions
draft: false
repo: https://github.com/Nox-HQ/nox
marketplace: https://github.com/marketplace/actions/nox-security-scanner
version: v1
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/Nox-HQ/nox** to version **v1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/nox-security-scanner) to find the latest changes.

## What's Changed

## Nox v1 (2026-06-05T19:48:20Z)

Language-agnostic security scanner with first-class AI application security.

### Installation

#### macOS/Linux (Homebrew)
```bash
brew tap felixgeelhaar/tap
brew install nox
```

#### Direct Download
Download the appropriate archive for your platform from the assets below.

### What's Changed

## Changelog
### Features
* 6dfd58c42a1caad73d5cd91c3d476779d0c55349 feat(action): MCP scan-before-publish workflow + registry integration contract
* 4c6220e8ef781f5f7ce1bf1c2886e4c84b487645 feat(ai): add MCP authorization & token-safety rules (MCP-016..021)
* 14a392e406e9561a9109a709d72047300593c6b0 feat(ai): add MCP tool-poisoning detection (MCP-009..014)
* 0b0e2938f63004130ac831d1bbc3a2b7d708bbde feat(compliance): map MCP rules to OWASP MCP Top 10, emit in SARIF
* 37717554e1855c85c0f69182c02af0a566965db0 feat(discovery): multi-client MCP config discovery (17+ clients)
* 668aa17edd70985b20bd1ba7df3e6019012e6e17 feat(mcppin): add MCP rug-pull detection (MCP-015)
* af4c5e797fcaf3f53088e952854abc22de22eba5 feat(scan): configurable generated-path noise filter + MCP-022 advisory
* e1999ff75e4b4098d1cb8b4e865716cce81292d9 feat(scan): zero-telemetry offline guarantee (--offline) + enforced no-egress test
* 6c0b305f2096b8facf1e34ed820a7ba41714604d feat: add MCP shadow-server & cross-server shadowing detection (MCP-022..024)
### Bug Fixes
* e5b465cc33007f5762915e5ee9801af7983b7d7e fix(ai): AI-009 no longer flags safe ast.literal_eval; scan-of-week haystack
* f592d42dd6ed355858ce43a8e5ee1f9c4afc9305 fix(ai): AI-030 test-file ignore + AI-006 word-boundary precision
* 706ee8c557ad622198ad86b23bb5d91b00662bf9 fix(ai): AI-042 test-file ignore + MCP-018 NetworkPolicy context
* 98f423d578e2f2641e7aff0023f070f13b9e9934 fix(ai): directory-level noise exclusion + AI-018/AI-049 semantic precision
* 82682f073306cff5c367a20f27a85259dce542f0 fix(ai): fix two pattern bugs + test/doc precision for AI content rules
* 51b8dd1c63ee96956f7412fc6165c42242d0a30a fix(ai): skip machine-generated/minified content in content rules
* 570da5b0f8a9e7bec09bc679cacd417f559a21d4 fix(ci): unpin cosign to v4 (#91)
* ba3ccc1d9e2f4b9c7ec4f2ce846f3e5fd7415389 fix(core): three correctness bugs in policy gate, suppression, and config
* 98e545c9138488083f499eedb2e1ef06951a3d65 fix(deps): VULN-002 normalize PEP 503 names (no self-typosquat); scan-of-week smolagents
* 3b26864d8ca41dd12517767a1c0ebea74b186907 fix(discovery): GOOS-correct client-config paths (Windows CI)
* ef4cc85e760138aa7b66d4602653050a42351a61 fix(rules): precision-harden MCP prose rules against false positives
* 4bec947ec9330006ff36631b235b913d5febee23 fix(rules): refine MCP-011/MCP-019 from dogfood triage (FP reduction round 2)
### Refactoring
* dc174f2b7c03de531b081162d0d12c7ddb38c4a0 refactor(core): formalize Analyzer interface + thread context.Context (DDD stage 2-3)
* 384a352066e7ea2e68b56014583a940e5226038a refactor(core): split scan orchestration into named pipeline stages
* 307e24122ad1123bafd0acb32933689a688a6e87 refactor(findings): validated value objects (DDD hardening, stage 1)
### Others
* a3cadd4e1c2ed28e217787cd74957a3288ff1d57 chore(release): v0.11.0 — MCP threat coverage, offline guarantee, DDD hardening
* 538f1fcf013403b95745777a7f971f37111525b9 chore(roady): add MCP rule precision-hardening task (task-73)
* 1c7dfa0a51c0961afa0b3e9a660de56de9672710 chore(roady): close task-64 (tool-poisoning corpus) and task-71 (dogfood)
* e3758285f312f4974eefb3955c9f6b8b2ee9dbb4 chore(roady): close task-72 (catalog/registry integration + outreach draft)
* 6a3abb06298220c2e1d9aabb5800cb6b5446c894 chore(roady): plan MCP beachhead — 8 features, 10 sequenced tasks
* ae4489007ccea495c43bebe1c84eeed180eef23d chore(roady): record task-74 (AI-rule precision + generated-content detection)
* dd8e3c8a706557161372e8706ae4366e5384a9b3 docs(changelog): note directory-noise exclusion + AI-018/049 precision
* 6af209cf6c073972e36355e4b8f85d17712e7aa9 fix(ai-019): exclude DB/cache .pipeline() method calls + langgraph queue update (#93)

**Full Changelog**: https://github.com/nox-hq/nox/compare/v0.10.2...v1


