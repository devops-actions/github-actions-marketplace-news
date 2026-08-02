---
title: AI Model End-of-Life Check
date: 2026-08-02 21:22:12 +00:00
tags:
  - oscarnilsson98
  - GitHub Actions
draft: false
repo: https://github.com/oscarnilsson98/ai-model-end-of-life-action
marketplace: https://github.com/marketplace/actions/ai-model-end-of-life-check
version: v2.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action monitors AI models deployed in an application and provides a real-time lifecycle check by comparing them against community deprecation information. It identifies models that may be deprecated or approaching shutdown, reporting dated shutdowns with undated deprecations as warnings. The action supports scheduled monitoring and can send Slack notifications when model lifecycles are breached.
---


Version updated for **https://github.com/oscarnilsson98/ai-model-end-of-life-action** to version **v2.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-model-end-of-life-check) to find the latest changes.

## Action Summary

This GitHub Action monitors AI models deployed in an application and provides a real-time lifecycle check by comparing them against community deprecation information. It identifies models that may be deprecated or approaching shutdown, reporting dated shutdowns with undated deprecations as warnings. The action supports scheduled monitoring and can send Slack notifications when model lifecycles are breached.

## What's Changed

## AI Model End-of-Life Action v2.0.0

v2 turns the action into a bounded, auditable lifecycle-policy gate while keeping the basic workflow small: declare the models you use and get warnings, machine-readable findings, and optional blocking policy before a provider shutdown surprises you.

### What is new

- **Deterministic provenance:** use a workspace-local `feed-file`, pin exact feed bytes with `expected-feed-sha256`, and record raw-feed, normalized lifecycle-feed, and inventory SHA-256 identities.
- **Stable automation identities:** every finding has a stable `findingId`; `alert-fingerprint`, retry-safe `next-alert-fingerprint`, and the compact `audit-record` avoid daily countdown churn.
- **Conservative source discovery:** opt in to bounded, exact, case-sensitive discovery of lifecycle-feed model IDs with repository-relative file/line/column coordinates. Discovery is report-only, emits no source snippets, and never changes policy or Slack state.
- **Better lifecycle policy:** v2 represents scheduled, already-passed, and undated deprecations explicitly; reports unmatched feed history without pretending it proves a model is active; and separates warning windows from blocking thresholds.
- **Change-aware Slack:** `notification-mode: on-change` supports initial, changed, unchanged, resolved, and error states through caller-managed fingerprint persistence. Ambiguous webhook POSTs are not retried within a run.
- **Bounded by construction:** feed documents, inventories, HTTP bodies, source traversal, matcher memory/CPU, annotations, outputs, summaries, and Slack text all have explicit limits and fail safely.
- **Hardened delivery:** exact Bun 1.3.14 builds, SHA-pinned workflow actions, Linux/macOS/Windows packaged-action tests, CodeQL, Dependabot, private vulnerability reporting, immutable exact releases, and guarded major-tag promotion.

### Upgrade from v1

v2 intentionally changes a few defaults and contracts:

- The action runtime is Node 24. Self-hosted runners and GitHub Enterprise Server must support Node 24 JavaScript actions.
- Undated deprecations are included by default. Set `include-undated: "false"` for dated-only v1 behavior.
- Feed content-age enforcement is opt-in because observation timestamps are not proof that every upstream scraper ran.
- Finding date fields are nullable, and each finding now includes `status` and `findingId`.
- `has-findings` includes configured undated findings; use `has-breaches` for the blocking-policy result.

Recommended immutable pin:

```yaml
- name: Check AI model lifecycle
  uses: oscarnilsson98/ai-model-end-of-life-action@08484f432ca1892f269e9d59913c158ea9b304e5 # v2.0.0
  with:
    models: '[{"id":"gpt-5.2","provider":"openai"}]'
    days-before-shutdown: "90"
    fail-within-days: "30"
```

See the [v1 to v2 migration table](https://github.com/oscarnilsson98/ai-model-end-of-life-action#migrating-from-v1-to-v2) and the advanced sections in the README before enabling discovery, feed-age policy, or change-aware Slack delivery.

### Release verification

- Independent defect-first review: no remaining findings.
- 120 deterministic tests with 402 assertions.
- Source and CI-helper TypeScript checks.
- Packaged action exercised on Linux, macOS, and Windows.
- CodeQL completed with zero open alerts on the release commit.
- Locked dependency audit found no known vulnerabilities.
- The committed Node bundle reproduced twice locally and again from the tag in GitHub Actions.
- The live raw and JSON Feed forms were equivalent across 416 lifecycle records and 9 serving platforms at release validation time.

The feed remains community-maintained and provider dates can carry regional, tier, or migration-program qualifications. Treat this action as an early-warning, evidence, and policy layer—not as a replacement for provider notices or contracts.

**Full changelog:** https://github.com/oscarnilsson98/ai-model-end-of-life-action/compare/v1.5.1...v2.0.0

