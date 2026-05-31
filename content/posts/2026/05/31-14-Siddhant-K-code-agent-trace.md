---
title: agent-trace eval
date: 2026-05-31 14:41:05 +00:00
tags:
  - Siddhant-K-code
  - GitHub Actions
draft: false
repo: https://github.com/Siddhant-K-code/agent-trace
marketplace: https://github.com/marketplace/actions/agent-trace-eval
version: gha-v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Siddhant-K-code/agent-trace** to version **gha-v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-trace-eval) to find the latest changes.

## Action Summary

`agent-strace` is a GitHub Action designed to trace and analyze the behavior of AI coding agents during their sessions. It captures a comprehensive view of the agent's decisions, tool calls, file operations, and error recovery steps, addressing gaps left by tools that only track LLM calls. By enabling session replay, exporting to observability platforms, and enforcing protective rules (e.g., cost ceilings or operation limits), it automates debugging, auditing, and monitoring of AI agent workflows to improve transparency, control, and reliability.

## What's Changed

Run [agent-trace](https://github.com/Siddhant-K-code/agent-trace) evals in CI, post a scored summary to the GitHub Actions step summary, and fail the workflow on regression.

## Usage

```yaml
- uses: Siddhant-K-code/agent-trace@gha-v1
  with:
    config: .agent-evals.yaml             # path to your eval config
    baseline: .agent-evals-baseline.json  # optional: fail on regression
    tolerance: "0.05"                     # allow up to 5% score drop
    save-baseline: "false"                # set true to update baseline after run
```

## Inputs

| Input | Default | Description |
|---|---|---|
| `config` | `.agent-evals.yaml` | Eval config file |
| `baseline` | none | Baseline scores file for regression gating |
| `save-baseline` | `false` | Overwrite baseline with current scores |
| `tolerance` | `0.05` | Max allowed score regression (0.0 to 1.0) |
| `trace-dir` | `.agent-traces` | Directory where agent-trace sessions are stored |
| `python-version` | `3.12` | Python version to install agent-trace with |
| `install-extras` | none | Optional extras, e.g. `openai,anthropic` |

## Outputs

| Output | Description |
|---|---|
| `passed` | `true` if all scorers passed |
| `summary-path` | Path to the written eval summary markdown |

Trace artifacts are uploaded automatically under the `agent-traces` artifact name.

## Docs

- [eval command reference](https://github.com/Siddhant-K-code/agent-trace/blob/main/docs/commands.md#eval): scorer config, `.agent-evals.yaml` format, baseline flags
- [production export](https://github.com/Siddhant-K-code/agent-trace/blob/main/docs/production.md): shipping eval scores to Datadog, Honeycomb, Grafana, Langfuse
- [setup guide](https://github.com/Siddhant-K-code/agent-trace/blob/main/docs/setup.md): full installation and integration paths
