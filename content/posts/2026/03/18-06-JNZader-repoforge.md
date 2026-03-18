---
title: RepoForge AI
date: 2026-03-18 06:04:47 +00:00
tags:
  - JNZader
  - GitHub Actions
draft: false
repo: https://github.com/JNZader/repoforge
marketplace: https://github.com/marketplace/actions/repoforge-ai
version: v0.3.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/JNZader/repoforge** to version **v0.3.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/repoforge-ai) to find the latest changes.

## Action Summary

RepoForge is an AI-powered code analysis tool designed to automate the generation of comprehensive technical documentation, AI agent skill files, security scans, dependency graphs, and LLM-optimized exports for any codebase. It simplifies tasks such as creating project-specific documentation, preparing code for AI tools like GitHub Copilot and Claude, and performing code quality assessments and security checks. Key capabilities include multi-format documentation generation, token compression, blast radius analysis, and support for multiple AI tools, making it a versatile solution for streamlining development workflows.

## Release notes

## 🚀 RepoForge v0.3.0 — 10 New Features

Major release with 10 new features sourced from analyzing 55+ competitor repos in the AI coding tools ecosystem.

### New CLI Commands

| Command | Description |
|---------|-------------|
| `repoforge export` | Flatten repo into single LLM-optimized file (markdown or XML) |
| `repoforge score` | Quality scoring with 7 dimensions (Completeness, Clarity, Specificity, Examples, Format, Safety, Agent Readiness) |
| `repoforge scan` | Security scanning with 37 rules across 5 categories (prompt injection, secrets, PII, destructive, unsafe code) |
| `repoforge compress` | Token compression with 7-pass deterministic pipeline |
| `repoforge graph` | Lightweight code knowledge graph with Mermaid, JSON, DOT, and blast-radius analysis |

### New Flags on `skills` Command

| Flag | Description |
|------|-------------|
| `--complexity auto\|small\|medium\|large` | Route generation by repo size |
| `--targets claude,cursor,codex,gemini,copilot` | Generate for 6 AI coding tools |
| `--disclosure tiered\|full` | Progressive disclosure with L1/L2/L3 tier markers |
| `--with-hooks` | Generate recommended Claude Code hooks based on tech stack |
| `--plugin` | Generate Anthropic-compatible plugin.json manifest |
| `--score` | Auto-score generated skills after generation |
| `--scan` | Auto-scan for security issues after generation |
| `--compress` | Auto-compress output for token optimization |

### Multi-Tool Support

Generate skills for **6 AI coding tools** in one command:

```bash
repoforge skills -w . --targets all
```

| Tool | Output |
|------|--------|
| Claude Code | `.claude/skills/` + `.claude/agents/` |
| OpenCode | `.opencode/` (mirror) |
| Cursor | `.cursor/rules/*.mdc` |
| Codex/OpenAI | `AGENTS.md` |
| Gemini CLI | `GEMINI.md` |
| GitHub Copilot | `.github/copilot-instructions.md` |

### Stats

- **766 tests** passing (up from ~104)
- **8 new modules**: exporter, scorer, adapters, disclosure, compressor, security, plugins, graph
- **0 new dependencies** — everything built on existing infrastructure
- **~30 atomic commits** for the entire release

### Install / Upgrade

```bash
pip install --upgrade repoforge-ai
```

### Inspirations

Features inspired by: [rendergit](https://github.com/karpathy/rendergit), [pm-skills](https://github.com/phuryn/pm-skills), [anthropics/knowledge-work-plugins](https://github.com/anthropics/knowledge-work-plugins), [claude-code-damage-control](https://github.com/disler/claude-code-damage-control), [agent-skills-hub](https://github.com/zhuyansen/agent-skills-hub), [code-review-graph](https://github.com/tirth8205/code-review-graph), [skill-generator](https://github.com/marketingjuliancongdanh79-pixel/skill-generator), [SWAGENT](https://github.com/x24labs/SWAGENT), and [55+ more](https://github.com/JNZader/repoforge).
