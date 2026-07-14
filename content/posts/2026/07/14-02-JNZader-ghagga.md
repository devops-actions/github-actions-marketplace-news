---
title: GHAGGA Code Review
date: 2026-07-14 02:47:11 +00:00
tags:
  - JNZader
  - GitHub Actions
draft: false
repo: https://github.com/JNZader/ghagga
marketplace: https://github.com/marketplace/actions/ghagga-code-review
version: v3.2.0
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
actionSummary: |
  GHAGGA is a production AI code review system that automates static analysis and multi-agent decision-making processes to improve code quality and maintainability. It uses 17 deterministic tools for detection of known issues before running a large language model (LLM). The tool learns from past reviews, retains context, and supports five orchestration strategies for different review needs.
---


Version updated for **https://github.com/JNZader/ghagga** to version **v3.2.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ghagga-code-review) to find the latest changes.

## Action Summary

GHAGGA is a production AI code review system that automates static analysis and multi-agent decision-making processes to improve code quality and maintainability. It uses 17 deterministic tools for detection of known issues before running a large language model (LLM). The tool learns from past reviews, retains context, and supports five orchestration strategies for different review needs.

## What's Changed

## What's Changed
* docs(readme): visualize review pipeline + fan-out multi-agent mode by @JNZader in https://github.com/JNZader/ghagga/pull/272
* test(cli): harden GitLab --mr live E2E manual gate by @JNZader in https://github.com/JNZader/ghagga/pull/273
* docs: bilingual README (refresh EN + add ES) by @JNZader in https://github.com/JNZader/ghagga/pull/279
* chore(ci): bump actions/checkout from 9f698171ed81b15d1823a05fc7211befd50c8ae0 to df4cb1c069e1874edd31b4311f1884172cec0e10 by @dependabot[bot] in https://github.com/JNZader/ghagga/pull/274
* chore(ci): bump pnpm/action-setup from 6.0.8 to 6.0.9 by @dependabot[bot] in https://github.com/JNZader/ghagga/pull/275
* chore(deps)(deps-dev): bump @types/node from 25.9.1 to 26.0.0 by @dependabot[bot] in https://github.com/JNZader/ghagga/pull/277
* chore(deps)(deps): bump the minor-and-patch group across 1 directory with 24 updates by @dependabot[bot] in https://github.com/JNZader/ghagga/pull/280
* chore(deps): batch safe Dependabot updates (CI actions + minor/patch) by @JNZader in https://github.com/JNZader/ghagga/pull/288
* chore(deps): upgrade AI SDK to v7 (coupled #285/#286/#287) by @JNZader in https://github.com/JNZader/ghagga/pull/289
* fix: remediate AUDIT-2026-07-10 — 20 findings (3 CRITICAL) by @JNZader in https://github.com/JNZader/ghagga/pull/290
* chore(action): rebuild dist to ship ACTION-MEM-001 fix by @JNZader in https://github.com/JNZader/ghagga/pull/291
* docs(memory): document semantic-reranking limitation (MEM-HYBRID-006) by @JNZader in https://github.com/JNZader/ghagga/pull/292
* feat(core): embedding provider abstraction — semantic-memory PR1/8 by @JNZader in https://github.com/JNZader/ghagga/pull/293
* feat(db): per-row embedding metadata columns — semantic-memory PR2/8 by @JNZader in https://github.com/JNZader/ghagga/pull/301
* feat(core): SQLite semantic cosine union — semantic-memory PR3/8 by @JNZader in https://github.com/JNZader/ghagga/pull/295
* feat(db): Postgres semantic cosine union — semantic-memory PR4/8 by @JNZader in https://github.com/JNZader/ghagga/pull/296
* feat(apps): wire embedding provider into 3 contexts — semantic-memory PR5/8 by @JNZader in https://github.com/JNZader/ghagga/pull/297
* feat(core): embedding backfill routine + CLI/server — semantic-memory PR6/8 by @JNZader in https://github.com/JNZader/ghagga/pull/298
* feat(core): local optional embedding provider — semantic-memory PR7/8 by @JNZader in https://github.com/JNZader/ghagga/pull/299
* docs: semantic memory search + config + backfill — semantic-memory PR8/8 by @JNZader in https://github.com/JNZader/ghagga/pull/300
* chore(sdd): archive semantic-memory-retrieval + sync specs by @JNZader in https://github.com/JNZader/ghagga/pull/302
* chore(typecheck): cover backfill scripts in tsc by @JNZader in https://github.com/JNZader/ghagga/pull/303
* chore(ci): bump docker/login-action from 4.2.0 to 4.4.0 by @dependabot[bot] in https://github.com/JNZader/ghagga/pull/304
* chore(ci): bump docker/metadata-action from 6.1.0 to 6.2.0 by @dependabot[bot] in https://github.com/JNZader/ghagga/pull/305
* chore(ci): bump actions/checkout from 6.0.3 to 7.0.0 by @dependabot[bot] in https://github.com/JNZader/ghagga/pull/306
* chore(deps)(deps): bump the minor-and-patch group with 10 updates by @dependabot[bot] in https://github.com/JNZader/ghagga/pull/307
* chore(release): close post-3.1.0 readiness gaps by @JNZader in https://github.com/JNZader/ghagga/pull/310
* chore(release): version packages for v3.2.0 by @JNZader in https://github.com/JNZader/ghagga/pull/312


**Full Changelog**: https://github.com/JNZader/ghagga/compare/v3.1.0...v3.2.0
