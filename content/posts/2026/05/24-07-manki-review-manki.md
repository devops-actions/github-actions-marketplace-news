---
title: Manki Review
date: 2026-05-24 07:08:20 +00:00
tags:
  - manki-review
  - GitHub Actions
draft: false
repo: https://github.com/manki-review/manki
marketplace: https://github.com/marketplace/actions/manki-review
version: v5.2.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/manki-review/manki** to version **v5.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/manki-review) to find the latest changes.

## Action Summary

Manki is a self-hosted GitHub Action for automated AI-powered code reviews that adapts to your team's conventions and project complexity. It assembles a dynamic team of reviewers, filters out noise and redundant findings, and classifies issues by severity, providing actionable feedback directly in pull requests. By learning from your team's feedback over time, it automates review tasks, reduces repetitive efforts, and ensures consistent, intelligent code evaluation without relying on third-party SaaS platforms.

## What's Changed

## What's Changed
* feat: surface judge per-thread and per-finding state in `RoundContext` by @xdustinface in https://github.com/manki-review/manki/pull/811
* build: commit dist/ to main so exact-version tag pins work by @xdustinface in https://github.com/manki-review/manki/pull/810
* feat: verdict decision trace in `RoundContext` by @xdustinface in https://github.com/manki-review/manki/pull/812
* feat: include reviewed commit SHA at the bottom of every Manki review report by @xdustinface in https://github.com/manki-review/manki/pull/814
* fix: use `github.context.serverUrl` for commit permalink in review footer by @xdustinface in https://github.com/manki-review/manki/pull/816
* feat: round-cap and trigger provenance in `RoundMeta` by @xdustinface in https://github.com/manki-review/manki/pull/815
* fix: enforce one-thread-evaluation-per-open-thread in judge, surface blocking thread on `prior_unaddressed` by @xdustinface in https://github.com/manki-review/manki/pull/817
* fix: head-SHA dedupe to prevent serialized sibling runs from posting duplicate reviews by @xdustinface in https://github.com/manki-review/manki/pull/824
* fix: read `.manki.yml` from PR head and merge user `exclude_paths` with defaults by @xdustinface in https://github.com/manki-review/manki/pull/828
* feat: populate `RoundUsage` end-to-end (tokens, latency, retries) by @xdustinface in https://github.com/manki-review/manki/pull/823
* feat: bail `runFullReview` early when head SHA moves past the event SHA by @xdustinface in https://github.com/manki-review/manki/pull/831
* fix: post in-progress marker in `checkAndAutoApprove` for defense-in-depth by @xdustinface in https://github.com/manki-review/manki/pull/830
* refactor: dedup `buildTimeoutDiagnostics` in `openai.ts` by importing from `cli-utils` by @xdustinface in https://github.com/manki-review/manki/pull/832
* refactor: extract `buildAgentPool` to `src/agents.ts` to break `config.ts` -> `review.ts` layering inversion by @xdustinface in https://github.com/manki-review/manki/pull/833
* fix: drop tautological `perTeamSum` assertion in `github.test.ts` by @xdustinface in https://github.com/manki-review/manki/pull/835
* fix: omit explicit `rawFindingCount: 0` from heuristic-fallback planning event by @xdustinface in https://github.com/manki-review/manki/pull/837
* fix: replace non-null assertion with type predicate in open-thread filter by @xdustinface in https://github.com/manki-review/manki/pull/836
* feat: planner and reviewer-agent provenance in `RoundContext` by @xdustinface in https://github.com/manki-review/manki/pull/829
* feat: dedup, recap, and diff-prep attribution in `RoundContext` by @xdustinface in https://github.com/manki-review/manki/pull/834
* fix: stop posting empty placeholder review on round-cap by @xdustinface in https://github.com/manki-review/manki/pull/841
* fix: bail `checkAndAutoApprove` when manki hasn't reviewed HEAD by @xdustinface in https://github.com/manki-review/manki/pull/839
* fix: filter empty wrapper reviews in `fetchBotReviews` by @xdustinface in https://github.com/manki-review/manki/pull/844
* chore: stamp CHANGELOG for v5.2.0 release by @xdustinface in https://github.com/manki-review/manki/pull/846


**Full Changelog**: https://github.com/manki-review/manki/compare/v5.1.1...v5.2.0
