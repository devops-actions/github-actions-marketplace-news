---
title: Remyx Outrider
date: 2026-08-11 14:37:32 +00:00
tags:
  - remyxai
  - GitHub Actions
draft: false
repo: https://github.com/remyxai/outrider
marketplace: https://github.com/marketplace/actions/remyx-outrider
version: v1.7.50
dependentsNumber: "2"
actionType: Composite
actionSummary: |
  Outrider is a GitHub Action designed to turn briefs into review-ready PRs by automating the process of implementing and testing code. It uses Anthropic Opus and z.ai GLM-5.2 as backend models to suggest and evaluate candidate implementations based on their relevance to a user's research interest or other triggers like search queries or pinning specific papers. The action generates draft PRs with complete implementation details, including test cases, license information, and references cited, ensuring that the maintainer has all necessary evidence for reviewing the changes.
---


Version updated for **https://github.com/remyxai/outrider** to version **v1.7.50**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/remyx-outrider) to find the latest changes.

## Action Summary

Outrider is a GitHub Action designed to turn briefs into review-ready PRs by automating the process of implementing and testing code. It uses Anthropic Opus and z.ai GLM-5.2 as backend models to suggest and evaluate candidate implementations based on their relevance to a user's research interest or other triggers like search queries or pinning specific papers. The action generates draft PRs with complete implementation details, including test cases, license information, and references cited, ensuring that the maintainer has all necessary evidence for reviewing the changes.

## What's Changed

Two layered mitigations against indirect prompt injection through
external content Outrider ingests (Discussions, merged-PR bodies,
lead-content URLs).

**Content-source labeling** — wrap external content in
`<untrusted_content source="…">` tags with a preamble instructing the
model NOT to treat instructions inside as directives. Applies to the
Discussions block (v1.7.49), merged-PR block, and lead-content
override sites.

**Canary-gated routing** — per-run token in `INVOCATION.md` that the
coding agent must write to `.remyx-recommendation/SPEC_ACK.txt` before
finishing. Missing token downgrades PR mode to Issue and flags branch
mode as `branch_pushed_canary_missing`. Bundle dir is scrubbed before
staging, so the canary never lands in the merged diff.

Validated against two attack shapes on a controlled fork:
  - Payload hidden in a collapsed `<details>` block → blocked
  - Payload buried mid-page in verbose corporate policy text → blocked

27 new tests; full suite 1230 passed. See #117.
