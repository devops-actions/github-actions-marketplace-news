---
title: EvalRepro compare
date: 2026-08-15 21:31:18 +00:00
tags:
  - seva9523
  - GitHub Actions
draft: false
repo: https://github.com/seva9523/EvalRepro
marketplace: https://github.com/marketplace/actions/evalrepro-compare
version: v0.1.0a2
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  EvalRepro is an open-source tool designed to detect semantic drift in AI evaluation inputs and contracts before changes can affect benchmark results silently. It creates hash-only manifests in isolated environments and compares the evaluation contract rather than relying solely on import success. The action checks various aspects such as task version, adapter parameters, sample coverage, order, and semantic fields, providing verdicts like `reproducible`, `order_drift`, or `semantic_drift`.
---


Version updated for **https://github.com/seva9523/EvalRepro** to version **v0.1.0a2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/evalrepro-compare) to find the latest changes.

## Action Summary

EvalRepro is an open-source tool designed to detect semantic drift in AI evaluation inputs and contracts before changes can affect benchmark results silently. It creates hash-only manifests in isolated environments and compares the evaluation contract rather than relying solely on import success. The action checks various aspects such as task version, adapter parameters, sample coverage, order, and semantic fields, providing verdicts like `reproducible`, `order_drift`, or `semantic_drift`.

## What's Changed

## What changed

EvalRepro now includes a first-party Harvey LAB task-contract adapter for detecting semantic drift across exact tasks, task-prefix selections, or complete local benchmark checkouts.

### Highlights

- Deterministic hashing of effective instructions, rubrics, deliverables, unknown fields, document paths, and document contents
- Credential-stripped Git provenance and shared-document inventory caching
- Hash-only output with optional identifier previews
- Path and symlink protections for task, instruction, document-root, and source-file inputs
- CLI support for reproducible local comparisons

### Validation

- Python 3.11, 3.12, and 3.13
- Ruff format and lint, strict mypy, and distribution builds
- 72 offline tests with 95.25% branch coverage on Python 3.12

Full details: [CHANGELOG.md](https://github.com/seva9523/EvalRepro/blob/v0.1.0a2/CHANGELOG.md)
