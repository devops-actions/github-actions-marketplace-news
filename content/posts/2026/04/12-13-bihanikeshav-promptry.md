---
title: promptry eval
date: 2026-04-12 13:50:40 +00:00
tags:
  - bihanikeshav
  - GitHub Actions
draft: false
repo: https://github.com/bihanikeshav/promptry
marketplace: https://github.com/marketplace/actions/promptry-eval
version: v0.5.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/bihanikeshav/promptry** to version **v0.5.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/promptry-eval) to find the latest changes.

## Action Summary

**Summary:**  
The `promptry` GitHub Action automates regression testing and evaluation of large language model (LLM) pipelines by tracking prompt versions, running evaluation suites, and detecting regressions or quality drifts. It helps developers identify changes in prompt performance, analyze root causes, and compare models against historical baselines, ensuring consistent and high-quality outputs. Key features include prompt versioning, statistical model comparison, cost tracking, and support for a web dashboard.

## What's Changed

## What's new in v0.5.0

### New features

- **`promptry doctor`** — Health check command that verifies Python version, storage, optional dependencies, embedding model, and LLM judge configuration
- **GitHub Action** — One-line CI eval runs with `suite`, `module`, and optional `compare` inputs
- **Schema migration system** — Safe future database upgrades without losing history
- **Pagination** — All list endpoints now support `offset`/`limit` parameters
- **Richer `init` templates** — `promptry init` now scaffolds 3 example suites: smoke-test, rag-qa, classification

### Performance

- **Batch queries** — Dashboard and model comparison no longer fire N+1 queries
- **Missing index** — Added index on `eval_runs.model_version`

### Bug fixes

- **Storage abstraction leaks fixed** — Deleted ~150 lines of duplicated raw SQL from CLI and MCP server
- **Consistent storage access** — CLI uses `get_storage()` singleton everywhere

### Documentation & website

- Full docs page with sidebar navigation
- Dashboard screenshot gallery in hero
- Competitive comparison table (vs Promptfoo, DeepEval, LangSmith)
- Multi-column footer, consistent nav across all pages
- README trimmed from 1031 to 110 lines

### Testing

- 42 new tests (252 to 294) covering cost-report, config, custom templates, compare CLI, doctor, pagination, migrations

### Install

```bash
pip install promptry                       # core
pip install promptry[semantic]             # + semantic assertions
pip install promptry[dashboard]            # + web dashboard
pip install promptry[semantic,dashboard]   # everything
```

