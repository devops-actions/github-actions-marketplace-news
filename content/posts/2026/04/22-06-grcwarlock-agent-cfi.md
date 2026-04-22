---
title: agent-cfi
date: 2026-04-22 06:24:16 +00:00
tags:
  - grcwarlock
  - GitHub Actions
draft: false
repo: https://github.com/grcwarlock/agent-cfi
marketplace: https://github.com/marketplace/actions/agent-cfi
version: v0.2.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/grcwarlock/agent-cfi** to version **v0.2.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-cfi) to find the latest changes.

## Action Summary

The `agent-cfi` GitHub Action provides Control Flow Integrity (CFI) for AI agents by verifying that their tool-call behavior remains consistent across code changes. It automates the detection of unauthorized tool calls or deviations in the agent's call graph, helping identify vulnerabilities like prompt injections or unexpected behavior during CI workflows. Key capabilities include baseline graph creation, PR-based drift detection, and proactive security testing with red-team probes based on real-world vulnerabilities.

## What's Changed

## What it does

`agent-cfi` gates every PR on your AI agent's **tool-call graph shape**.

Runtime guardrails (Lakera, LLM-Guard, NeMo Guardrails) look at a single call in isolation. Red-team frameworks (Garak, PyRIT, Promptfoo) ask "did it fail this scenario?" Neither models allowed behavior as a graph and blocks drift in CI. `agent-cfi` does.

## Quick start

Record a baseline from eval traces on `main`, then commit the graph:

```bash
agent-cfi record --traces traces.jsonl --out .agent-cfi/baseline.json
```

In your PR workflow, re-run evals to capture `pr-traces.jsonl`, then:

```yaml
- uses: grcwarlock/agent-cfi@v0.2.1
  with:
    traces: pr-traces.jsonl
    baseline: .agent-cfi/baseline.json
    config: .agent-cfi/config.yaml
    upload-sarif: true
```

## What it catches

| Attack | Detected as |
|---|---|
| Indirect prompt injection → unexpected tool call | `new_edge` |
| Agent hijacked into loop (budget drain) | `edge_drift` |
| Exfiltration: tainted source → `http_post.body` | `taint_violation` |
| Silent MCP schema rug-pull | `mcp_schema_mismatch` |

## Inputs

| Input | Default | Description |
|---|---|---|
| `traces` | required | JSONL trace file from this PR |
| `baseline` | `.agent-cfi/baseline.json` | Committed baseline graph |
| `config` | `.agent-cfi/config.yaml` | Rule config |
| `sarif` | `agent-cfi.sarif` | SARIF output path |
| `upload-sarif` | `true` | Upload findings to GitHub Code Scanning |
| `fail-on` | config-defined | Comma-separated kinds that fail CI |
| `mcp-pins` | — | MCP pin file (paired with `mcp-current`) |
| `mcp-current` | — | Live MCP schemas JSON (paired with `mcp-pins`) |
| `python-version` | `3.12` | Python runtime |

## What's in v0.2.1

All v0.2.0 features — MCP schema hash-pinning, diff-overlay graph visualization, native LangGraph/CrewAI/AutoGen tracer adapters, offline paraphrase fuzzer, and a CVE-derived probe pack — plus Marketplace polish: the Action now exposes MCP pinning inputs, CLI gains `--version`, SARIF tool version tracks package version, reference probe-agent example ships in `examples/`, unit-test CI runs pytest on Python 3.10 / 3.11 / 3.12.

## Docs

- [README](https://github.com/grcwarlock/agent-cfi)
- [CHANGELOG](https://github.com/grcwarlock/agent-cfi/blob/main/CHANGELOG.md)
