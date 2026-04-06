---
title: SkillForge — SKILL.md quality check
date: 2026-04-06 14:05:28 +00:00
tags:
  - LiqunChen0606
  - GitHub Actions
draft: false
repo: https://github.com/LiqunChen0606/skillforge
marketplace: https://github.com/marketplace/actions/skillforge-skill-md-quality-check
version: v0.8.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/LiqunChen0606/skillforge** to version **v0.8.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skillforge-skill-md-quality-check) to find the latest changes.

## Action Summary

SkillForge is a GitHub Action designed to analyze, lint, secure, and test AI skill files (`SKILL.md`) for compliance and quality before deployment. It automates the detection of structural issues, security vulnerabilities, and incomplete metadata, ensuring skills are well-formed, tamper-proof, and free from common risks such as prompt injection or dangerous code patterns. Additionally, it provides grading and shareable badges for skill quality, enabling streamlined CI integration and promoting consistent standards in AI development.

## What's Changed

## Three wow features

### `aif generate` — skill from plain English

```bash
pip install anthropic  # optional dependency
aif generate "code review skill for React PRs" -o code-review.md
```

Calls the Anthropic API, produces a deploy-ready SKILL.md that passes all quality checks. Post-processes with `aif fix`, validates with `aif check`, retries on failure. One command → A+ skill.

### `aif watch` — live terminal grade

```bash
aif watch my-skill.md
```

Persistent terminal display that updates instantly on every file save. Color-coded grade (green/yellow/red), progress bar, lint/security counts, running timer. Makes skill authoring feel like a game.

### `aif doctor` — repo health report

```bash
aif doctor .
```

Scans your entire repo for skills, grades each A+..F, prints a sorted report with actionable fix suggestions. One command → full picture.

### Full command list (v0.8.0)

| Command | What |
|---|---|
| `aif check FILE` | lint + security scan |
| `aif score FILE` | letter grade + badge |
| `aif fix FILE` | autofix lint issues |
| `aif scan FILE` | security only |
| `aif lint FILE` | lint only |
| `aif generate "..."` | LLM-generate a skill |
| `aif watch FILE` | live grade display |
| `aif doctor DIR` | repo-wide report |
| `aif mcp-server` | MCP for Claude Desktop |

### Install

```bash
pip install aif-skillforge   # cross-platform wheels
```

106 tests passing across all Python modules.
