---
title: AI Model Lifecycle Monitor
date: 2026-08-03 15:11:35 +00:00
tags:
  - oscarnilsson98
  - GitHub Actions
draft: false
repo: https://github.com/oscarnilsson98/ai-model-end-of-life-action
marketplace: https://github.com/marketplace/actions/ai-model-lifecycle-monitor
version: v3.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action checks AI models referenced by committed application and deployment code against a lifecycle feed. It provides warnings or fails the job if known models will be shut down within a specified period, helping to ensure compliance with deprecation policies. The action reads evidence directly from the Git commit being assessed and outputs actionable information for developers to address potential issues before they impact production.
---


Version updated for **https://github.com/oscarnilsson98/ai-model-end-of-life-action** to version **v3.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-model-lifecycle-monitor) to find the latest changes.

## Action Summary

This GitHub Action checks AI models referenced by committed application and deployment code against a lifecycle feed. It provides warnings or fails the job if known models will be shut down within a specified period, helping to ensure compliance with deprecation policies. The action reads evidence directly from the Git commit being assessed and outputs actionable information for developers to address potential issues before they impact production.

## What's Changed

The first production-ready release of AI Model Lifecycle Monitor discovers model usage directly from committed repository code and warns before known shutdowns. There is no model inventory to generate or maintain.

## Quick start

```yaml
permissions:
  contents: read

steps:
  - uses: actions/checkout@v7
    with:
      persist-credentials: false
      fetch-depth: 0

  - uses: oscarnilsson98/ai-model-end-of-life-action@v3
```

That warning-only workflow needs no provider credentials, package installation, language setup, or action inputs. For production, pin both actions to reviewed commit SHAs.

## Highlights

- Detects supported OpenAI, Anthropic, Google Gen AI, Amazon Bedrock, Azure Terraform, and consumed environment-binding model references without executing repository code.
- Reads immutable Git trees rather than arbitrary runner workspace files.
- Separates lifecycle outcome, scan coverage, and pull-request comparison health.
- Keeps base-branch policy authoritative on pull requests and merge queues.
- Supports additive, freshness-bounded checked-in claims for runtime-only evidence.
- Publishes bounded reports, annotations, stable fingerprints, job summaries, strict JSON Schemas, and optional Slack snapshots.
- Quarantines unreviewed lifecycle-feed changes as partial coverage instead of granting them lifecycle authority.

## Verification

- 205 deterministic tests and both TypeScript projects pass on the pinned Bun 1.3.14 toolchain.
- The committed Node 24 bundle reproduces byte-for-byte.
- The packaged zero-input action passes on Linux, macOS, and Windows.
- CodeQL reports no alerts at the release gate.
- The live adapter validates 416 records: 413 model pairs and 3 explicit non-models, with no lifecycle conflicts or reviewed pair drift.
- The exact release tag runs hermetically as `no-actionable-risk + complete`.

See the [README](https://github.com/oscarnilsson98/ai-model-end-of-life-action#readme), [product contract](https://github.com/oscarnilsson98/ai-model-end-of-life-action/blob/v3.0.0/docs/v3-product-contract.md), and [detector contract](https://github.com/oscarnilsson98/ai-model-end-of-life-action/blob/v3.0.0/docs/v3-detector-contract.md).

