---
title: efaimo
date: 2026-07-18 14:40:42 +00:00
tags:
  - efaimo-ai
  - GitHub Actions
draft: false
repo: https://github.com/efaimo-ai/efaimo
marketplace: https://github.com/marketplace/actions/efaimo
version: v0.1.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The efaimo action is a tool designed to audit and validate Agent Skills and MCP servers. It checks the context budget, trigger quality, linting errors, and migration diffs against the 2026-07-28 spec. Additionally, it provides a way to measure whether a skill improves task completion using A/B testing with LLM judges. The tool is useful for developers to ensure that their agent's skills are well-formed, efficient, and effective.
---


Version updated for **https://github.com/efaimo-ai/efaimo** to version **v0.1.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/efaimo) to find the latest changes.

## Action Summary

The efaimo action is a tool designed to audit and validate Agent Skills and MCP servers. It checks the context budget, trigger quality, linting errors, and migration diffs against the 2026-07-28 spec. Additionally, it provides a way to measure whether a skill improves task completion using A/B testing with LLM judges. The tool is useful for developers to ensure that their agent's skills are well-formed, efficient, and effective.

## What's Changed

First release. One CLI that audits what your agent loads: MCP servers and Agent Skills.

- `efaimo weigh`: context-window cost of MCP tool definitions (stdio, remote, or a whole client config) and of Agent Skills, in three serializations, with an optional `--anthropic` exact Claude count. Per-tool numbers plus a block-framing line reconcile exactly with the total. CI budget gates (`--out`/`--diff`/`--max-tokens`/`--allow-increase`) and a badge.
- `efaimo check --mcp`: a quality grade (descriptions, schemas, annotations, cost) plus a separate ungraded 2026-07-28 migration diff, each item naming its SEP. Speaks both the legacy handshake and bare stateless requests, so 2026-07-28 servers audit fine.
- `efaimo check --skill`: lints Agent Skills against the agentskills.io spec, per-skill grades over a folder, plus a reproducible Skills Quality Index (pinned-commit corpus).
- `efaimo test` (experimental): with/without-skill A/B trials with an LLM judge; dry-run by default, opt-in `--live`.
- `efaimo mcp`: a read-only MCP server exposing the skill checks to an agent.

Install: `npx efaimo` or `npm i -D efaimo`. Node 22+. Apache-2.0.

Full changelog: https://github.com/efaimo-ai/efaimo/blob/main/CHANGELOG.md
