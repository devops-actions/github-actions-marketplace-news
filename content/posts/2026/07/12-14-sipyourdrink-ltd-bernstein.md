---
title: Bernstein — Multi-Agent Orchestration
date: 2026-07-12 14:44:11 +00:00
tags:
  - sipyourdrink-ltd
  - GitHub Actions
draft: false
repo: https://github.com/sipyourdrink-ltd/bernstein
marketplace: https://github.com/marketplace/actions/bernstein-multi-agent-orchestration
version: v3.4.4
dependentsNumber: "5"
actionType: Composite
---


Version updated for **https://github.com/sipyourdrink-ltd/bernstein** to version **v3.4.4**.

- This action is used across all versions by **5** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/bernstein-multi-agent-orchestration) to find the latest changes.

## What's Changed

# v3.4.4

Released 2026-07-12.

A capability release that adds the experimental MCP Tasks protocol surface to
the Bernstein MCP server, plus release-pipeline hardening.

## MCP Tasks extension

- Long-running runs are now exposed through the experimental MCP Tasks protocol.
  A task-capable MCP client (Claude Code, Cursor, Cline, and others) can start a
  run with `bernstein_run`, receive a `CreateTaskResult`, and then poll status
  and retrieve the result asynchronously through the `get_task`,
  `get_task_result`, `list_tasks`, and `cancel_task` handlers without holding a
  blocking session open. The task handle embeds the run's audit-chain head hash
  (`{task_id}:{head_hash}`) so a stateless client can still tie a progress claim
  back to the signed chain.
- W3C trace-context (`traceparent`, `tracestate`, `baggage`) is ingested from
  the incoming request and propagated to the spawned agent, scoped per task so a
  run without trace-context never inherits another run's context.
- Every task status projects to a terminal MCP status on completion, and
  `get_task_result` reports an error for terminal-error and in-flight tasks
  instead of reporting success.

  Thanks to @Amanmeena0 for contributing the MCP Tasks protocol implementation
  and the trace-context propagation.

## Release pipeline

- The MCP registry listing publish is now idempotent: a version that is already
  live is treated as success instead of failing the release on a re-run or a
  tag-push/dispatch race. (#2466)

## Housekeeping

- Refreshed the packaged adapter last-green projection and its docs table from
  the nightly conformance canary; every row stays anchored to its attesting
  receipt.

