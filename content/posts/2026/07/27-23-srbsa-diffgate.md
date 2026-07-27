---
title: DiffGate Review Triage
date: 2026-07-27 23:01:22 +00:00
tags:
  - srbsa
  - GitHub Actions
draft: false
repo: https://github.com/srbsa/diffgate
marketplace: https://github.com/marketplace/actions/diffgate-review-triage
version: v0.8.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  DiffGate is an agent hook that provides a deterministic guardrail for coding agents. It automates the review process by analyzing only the lines that have changed, ensuring consistent and accurate feedback in real-time. This helps prevent errors from propagating to production and ensures higher-quality code across different environments.
---


Version updated for **https://github.com/srbsa/diffgate** to version **v0.8.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/diffgate-review-triage) to find the latest changes.

## Action Summary

DiffGate is an agent hook that provides a deterministic guardrail for coding agents. It automates the review process by analyzing only the lines that have changed, ensuring consistent and accurate feedback in real-time. This helps prevent errors from propagating to production and ensures higher-quality code across different environments.

## What's Changed

- chore: add .diffgate/learnings.json to .gitignore (0a16482)
- chore: don't track .diffgate/learnings.json for now (82fd85e)
- fix: bug-bash round three — security hardening + feature-audit closeout (c6382fc)
- Merge fix/bugbash-round-two-and-readme (3bf8e33)
- fix: bug-bash round two (graph precision + rule scoping) + README reposition (59ff800)
- Merge feat/builtin-codegraph-provider: builtin code graph + structural rules + reinvented-helper (0.8.0) (c623e4e)
- refactor: consolidate six copies of recompute; release 0.8.0 (dfe2ee8)
- feat: reinvented-helper — catch duplication, the other half of over-engineering (684a654)
- docs: fold spec-conformance fix into the structural rules changelog entry (fdc9286)
- fix: cognitive complexity spec conformance, dead too-many-parameters, MCP leak (9f0b967)
