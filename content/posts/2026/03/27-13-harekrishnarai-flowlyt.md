---
title: Flowlyt Security Analyzer
date: 2026-03-27 13:57:40 +00:00
tags:
  - harekrishnarai
  - GitHub Actions
draft: false
repo: https://github.com/harekrishnarai/flowlyt
marketplace: https://github.com/marketplace/actions/flowlyt-security-analyzer
version: v1.1.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/harekrishnarai/flowlyt** to version **v1.1.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/flowlyt-security-analyzer) to find the latest changes.

## Action Summary

Flowlyt is an AI-powered security analyzer designed for GitHub Actions and GitLab CI/CD workflows. It automates the detection of security vulnerabilities by combining Abstract Syntax Tree (AST) analysis with AI-driven false positive reduction, context-aware analysis, and real-time verification. The tool significantly enhances CI/CD pipeline security by identifying misconfigurations, supply chain risks, and permission issues while reducing false positives and providing actionable insights with confidence scoring.

## Release notes

## What's New

Three-layer AI architecture that reduces token cost by ≥60%, produces class-specific analysis, and delivers a modern streaming CLI experience.

### Layer 1 — Heuristic Pre-filter
Zero-cost Go pattern matching skips obvious false positives before any API call: expression references (`${{ secrets.X }}`), placeholders, SHA-pinned actions, locked permissions. Always sends real token prefixes (`ghp_`, `sk-`, `AKIA`) and high-entropy blobs.

### Layer 2 — Class-Specific Prompts
Four specialist system prompts replace the single generic template:
- **`escalation`** — trigger × permissions × steps chain reasoning
- **`injection`** — source → sink data flow tracing
- **`secrets_context`** — live credential vs placeholder/reference
- **`supply_chain_trust`** — trust context beyond SHA pinning

### Layer 3 — Batch Dispatcher
- 5 findings per API call, grouped by class
- Index-echoed attribution (no positional misattribution)
- Falls back to individual calls on batch failure
- All 5 providers: Claude, OpenAI, Gemini, Grok, Perplexity

### Streaming UX
Live progress bar, per-finding result lines as batches resolve, `PrintAISummary` box at scan end.

```
🤖 AI analysis  [████████░░░░░░░░]  8/20 findings  (escalation batch 2/3)

  ✗  PULL_REQUEST_TARGET_INJECTION   CRITICAL  TRUE POSITIVE   94%
     Fix: isolate checkout in unprivileged job, remove write permissions

  ~  HARDCODED_SECRET                HIGH      FALSE POSITIVE  81%
     Placeholder pattern — not a live credential
```

### New output fields
- `AISkipped` / `AISkipReason` / `AIRemediation` on findings (JSON, SARIF, CLI)
- `ai.skipped`, `ai.skip_reason`, `ai.remediation` SARIF properties

## Breaking Changes
- `--ai-workers` flag removed (synchronous batch design)
- `NewAnalyzer` signature: `maxWorkers int` parameter removed

## Full Changelog
See [CHANGELOG-v1.1.0.md](changelogs/CHANGELOG-v1.1.0.md) for complete details.
