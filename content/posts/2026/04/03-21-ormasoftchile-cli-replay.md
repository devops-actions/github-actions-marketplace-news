---
title: Setup cli-replay
date: 2026-04-03 21:44:47 +00:00
tags:
  - ormasoftchile
  - GitHub Actions
draft: false
repo: https://github.com/ormasoftchile/cli-replay
marketplace: https://github.com/marketplace/actions/setup-cli-replay
version: v0.1.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/ormasoftchile/cli-replay** to version **v0.1.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-cli-replay) to find the latest changes.

## Action Summary

**Summary:**  
The `cli-replay` GitHub Action is a scenario-driven tool designed for black-box testing of systems that orchestrate external CLI tools. It records real command executions, replays them deterministically, and validates that workflows execute the correct commands in the expected order without requiring network access, credentials, or live services. Key capabilities include strict step ordering, flexible argument matching, call count validation, and rich diagnostics, making it ideal for testing deployment pipelines, runbooks, and multi-tool workflows.

## What's Changed

## Changelog
### Features
* 77beeb63a0af0f17f1e7b3197947563cb9c3a3c4 feat: extract ReplayEngine into pkg/replay
* 0f8ad054eadcfae41894b58dd85c262151f503e7 feat: promote scenario, matcher, verify packages to pkg/
### Bug Fixes
* 357ca94c5bb82e42f6a9591e490307130dd776d1 fix: decouple pkg/verify from internal/runner.State
* 66344ef08a1efee3c83f23bbd27a4199dea2121d fix: update GitHub URLs from cli-replay/cli-replay to ormasoftchile/cli-replay
* 381017da944b46da9c0e47eb493e69dd61f0ae4b fix: update Go module path to match GitHub repo URL
* 2dd12bd2242344e6cea1137e03cb57e4b33ace45 fix: update remaining import paths to pkg/scenario
### Other Changes
* ec443ce9b7ee22c96b8bf0cebcb0886c2073a2ae Orchestration checkpoint: Package promotion Phase 1 complete
* 45632a9ad8d74e6d6ce29bcefb77be315b004f90 Orchestration: Merge review verdict + fix blocking issue
* a0dcb32f8637faeadf6e050bdb2f6b2c4fe0df66 Team: Squad orchestration (2026-04-03)
* c89458a3471bc8daa181cad6716ec9971e310d52 scribe: orchestration logs, session log, decision consolidation (2026-04-03T18:16)


