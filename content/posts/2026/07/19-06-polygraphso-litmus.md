---
title: Polygraph MCP gate
date: 2026-07-19 06:34:42 +00:00
tags:
  - polygraphso
  - GitHub Actions
draft: false
repo: https://github.com/polygraphso/litmus
marketplace: https://github.com/marketplace/actions/polygraph-mcp-gate
version: litmus-v0.35.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This GitHub Action, litmus, is designed to automate the process of evaluating and grading MCP servers based on their behavior. It connects to an MCP endpoint, runs a set of probes to evaluate the server's performance, and provides a grade along with evidence files. The action can be used for both lookup and execution purposes, allowing users to quickly assess server capabilities and reproduce grades.
---


Version updated for **https://github.com/polygraphso/litmus** to version **litmus-v0.35.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/polygraph-mcp-gate) to find the latest changes.

## Action Summary

This GitHub Action, litmus, is designed to automate the process of evaluating and grading MCP servers based on their behavior. It connects to an MCP endpoint, runs a set of probes to evaluate the server's performance, and provides a grade along with evidence files. The action can be used for both lookup and execution purposes, allowing users to quickly assess server capabilities and reproduce grades.

## What's Changed

- `list_servers` is paged: `grade` / `limit` (default 25, max 100) / `offset` inputs, with a full-corpus summary (total plus per-grade counts). Default calls no longer return the full graded list.
- The hosted lookup endpoint (`https://polygraph.so/api/mcp`, Streamable HTTP, lookup tools only) is advertised in `server.json` `remotes` and leads the install docs for lookup use. Grading (`run_litmus`, `run_skill_litmus`) remains a local stdio install by design.
- Tool descriptions trimmed for context budget; safety guidance retained verbatim and the tool-ordering guidance moved into the descriptions themselves.
- Version pins (`server.json`, plugin `.mcp.json`, `action.yml`) are now held in lockstep by `scripts/check-versions.mjs` in CI. Plugin 0.7.2 ships the 0.35.0 pin.
