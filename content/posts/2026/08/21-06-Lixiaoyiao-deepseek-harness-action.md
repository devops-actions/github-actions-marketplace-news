---
title: DeepSeek Harness for GitHub
date: 2026-08-21 06:50:59 +00:00
tags:
  - Lixiaoyiao
  - GitHub Actions
draft: false
repo: https://github.com/Lixiaoyiao/deepseek-harness-action
marketplace: https://github.com/marketplace/actions/deepseek-harness-for-github
version: v0.3.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  The DeepSeek Harness Action for GitHub integrates the capabilities of DeepSeek into GitHub workflows. It automates tasks such as inline reviews on pull requests, diagnoses failed CI runs, and fixes issues by generating pull requests. The action requires a DeepSeek API key to function and is designed to be used in conjunction with other GitHub Actions to enhance software development workflows.
---


Version updated for **https://github.com/Lixiaoyiao/deepseek-harness-action** to version **v0.3.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/deepseek-harness-for-github) to find the latest changes.

## Action Summary

The DeepSeek Harness Action for GitHub integrates the capabilities of DeepSeek into GitHub workflows. It automates tasks such as inline reviews on pull requests, diagnoses failed CI runs, and fixes issues by generating pull requests. The action requires a DeepSeek API key to function and is designed to be used in conjunction with other GitHub Actions to enhance software development workflows.

## What's Changed

## What's new

- Add general `@dsh task` support for repository Q&A, analysis, and coding work, plus trusted explicit-prompt automation for dispatch and scheduled workflows.
- Add a bounded controller-owned loop for edit -> allowed tool/validation -> redacted error feedback -> repair, with turn, tool-call, deadline, and no-progress limits.
- Add maintainer-defined named command tools through versioned fixed-argv manifests, exact allowlists, and resource, output, network, workspace, and call-count limits.
- Write tasks create or update validated branches and pull requests. Issue-backed tasks and sticky progress/result comments are supported, and generic tasks never push directly to the default branch.
- Add loop and tool receipts to schema-v1 `result-json` while preserving existing scalar outputs.
- Add internal provider/session contracts as stable extension seams for future engines, tools, extensions, and resume support.

## Security model

- Model output, repository data, logs, and tool output remain untrusted. DSH receives neither real GitHub nor DeepSeek credentials; controller-owned credential-free containers mediate tools and validation.
- Write access remains opt-in and fail-closed: it requires `allow-write`, a trusted same-repository context and actor, SHA and identity rebinding, an immutable container image, a publishable change, and successful controller validation.
- Command tools accept no model-supplied argv. Configured argv containing controller credentials is rejected, and generated root `.git` and `node_modules` content is excluded from validation and publication.

## Compatibility

- Existing v0.2 input names and defaults, scalar outputs, automatic review/diagnose/fix routing, and schema-v1 `result-json` remain compatible. Task and loop fields are additive and conservatively disabled by default.
- Configurations that embed controller credentials in argv, or depend on generated root `.git` or `node_modules` entering validation, now fail closed.
- The action requires Node.js 24 and uses the audited `@deepseek-ai/dsh@0.1.0-rc.6` policy profile.

## Verification

- Final `main` CI passed formatting, lint, type checking, all 272 tests, deterministic bundle checks, configuration checks, and a real Linux Docker DSH runtime smoke: https://github.com/Lixiaoyiao/deepseek-harness-action/actions/runs/32402165253
- A dedicated real Docker and DeepSeek E2E passed a three-turn named-tool -> failing validation -> repair loop, structured receipts, PR writeback, sticky comment reuse, explicit-prompt automation, and fail-closed policy/configuration paths: https://github.com/Lixiaoyiao/deepseek-harness-action/actions/runs/32394724312
- Post-merge E2E passed real `@dsh task --read`, Issue `@dsh task --write` -> PR, exact file/commit/marker validation, and CI on the generated PR: https://github.com/Lixiaoyiao/deepseek-harness-action/actions/runs/32404059832, https://github.com/Lixiaoyiao/deepseek-harness-action/actions/runs/32405550314, https://github.com/Lixiaoyiao/deepseek-harness-action/actions/runs/32407180137
- Post-merge automatic review passed against the exact trusted v0.3.0 `main` action after one fail-closed malformed-output attempt and a successful retry: https://github.com/Lixiaoyiao/deepseek-harness-action/actions/runs/32403987182/attempts/2

## Not enabled in v0.3.0

- Real MCP server connections.
- Plugin discovery, installation, or execution.
- Cross-run session persistence or resume.

The shipped provider/session types are extension seams only. This release has no public MCP, plugin, or resume inputs and emits no reusable session token.

## Known limitations

- Docker bridge networking is not destination-level egress isolation; validation also executes untrusted repository code with bridge networking.
- `isolation=none` has no OS process boundary and is suitable only for dedicated trusted runners.
- Sticky v1 markers do not include run/head freshness; custom workflows should serialize per target.
- DSH and its transitive npm graph are installed at runtime. Use a trusted mirror or reviewed prebuilt image when reproducibility matters.
- Container cleanup is best effort after hard runner termination or Docker failure.
- Malformed model output fails closed but is not automatically retried inside the same Action run. One real review attempt produced malformed structured output; an explicit rerun succeeded.


