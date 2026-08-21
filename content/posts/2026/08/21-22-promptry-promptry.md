---
title: promptry eval
date: 2026-08-21 22:00:09 +00:00
tags:
  - promptry
  - GitHub Actions
draft: false
repo: https://github.com/promptry/promptry
marketplace: https://github.com/marketplace/actions/promptry-eval
version: v1.1.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The GitHub Action described in the README automates the creation of documentation content for a repository using templates provided by a specified template provider. It solves the problem of repetitive documentation tasks by generating documentation based on predefined templates, reducing the risk of errors and saving development time. The key capabilities include:
  
  - **Template Management**: Allows users to manage and configure templates used to generate documentation.
  - **Content Generation**: Automatically generates documentation content using provided templates, filling in placeholders with dynamic data from the repository's metadata or other sources.
  - **Reusability**: Enables reuse of generated documentation across different repositories or projects by maintaining a centralized template library.
  
  This action streamlines the documentation creation process and ensures consistency across multiple repositories.
---


Version updated for **https://github.com/promptry/promptry** to version **v1.1.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/promptry-eval) to find the latest changes.

## Action Summary

The GitHub Action described in the README automates the creation of documentation content for a repository using templates provided by a specified template provider. It solves the problem of repetitive documentation tasks by generating documentation based on predefined templates, reducing the risk of errors and saving development time. The key capabilities include:

- **Template Management**: Allows users to manage and configure templates used to generate documentation.
- **Content Generation**: Automatically generates documentation content using provided templates, filling in placeholders with dynamic data from the repository's metadata or other sources.
- **Reusability**: Enables reuse of generated documentation across different repositories or projects by maintaining a centralized template library.

This action streamlines the documentation creation process and ensures consistency across multiple repositories.

## What's Changed

- **OpenAI drop-in capture (Python + JS at parity):** `from promptry.openai
  import OpenAI` records every chat/responses/embeddings call — cost, tokens,
  cached-token split, latency, and a call-site-inferred name — with streaming
  and failures handled. JS ships the same via `wrapOpenAI()` (`promptry-js/openai`).
- **Cost-attributed call traces:** `with promptry.trace("agent"):` (and `trace()`
  in JS) groups a run's LLM calls; the dashboard's new **Traces** page shows a
  per-step token/$ waterfall. Invocation metadata only — not distributed tracing.
- **Alerting config UI:** dashboard Settings shows configured channels
  (Slack/webhook, PagerDuty, email, OTel export) and can fire a test alert;
  new `GET /api/alerts/status` and `POST /api/alerts/test` endpoints.
- **Postgres scale-tier backend (alpha, opt-in):** `[storage] mode = "postgres"`
  (or `$PROMPTRY_POSTGRES_DSN`) points the whole store at a shared PostgreSQL
  server via `promptry[postgres]`. SQLite on one file stays the tested default.
- **Internals:** shared `tomllib`/`tomli` shim; batched suite-list score history
  (kills an N+1 on `/api/suites`); ruff ruleset pinned for CI/local parity;
  `co_qualname` polyfill so call-site naming matches on Python 3.10.

---

**Install:** `pip install -U promptry` · `npm install promptry-js@1.1.0`
**Site + live price calculator:** https://promptry.run · https://promptry.run/prices/
