---
title: Skillmark Lint
date: 2026-04-14 06:38:40 +00:00
tags:
  - michellepellon
  - GitHub Actions
draft: false
repo: https://github.com/michellepellon/skillmark
marketplace: https://github.com/marketplace/actions/skillmark-lint
version: v0.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/michellepellon/skillmark** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skillmark-lint) to find the latest changes.

## Action Summary

The **Skillmark** GitHub Action is a CI-native tool designed to lint, validate, and score `SKILL.md` files for compliance with AgentSkills.io specifications. It automates quality assurance by enforcing 84 rules, generating a composite quality score (0-100) across six weighted categories, and offering multiple output formats (e.g., JSON, SARIF, Markdown). Key features include automated issue fixing, pre-commit hooks, and integration with GitHub Actions, streamlining skill documentation validation and improving overall quality and compliance.

## What's Changed

# skillmark v0.1.0

CI-native linter, validator, and quality scorer for [Agent Skills](https://agentskills.io) (`SKILL.md`).

## Highlights

- **84 rules** across spec compliance, best practices, and quality scoring
- **Quality scoring** — 0-100 composite score with letter grades (A-F)
- **4 output formats** — terminal, JSON, SARIF (GitHub code annotations), Markdown
- **Fix mode** — auto-repair 6 common issues with `--dry-run` preview
- **CI-native** — GitHub Action + pre-commit hook + `.skillmark.toml` config

## Install

```bash
cargo install skillmark
```

## Quick Start

```bash
# Check a skill
skillmark check path/to/my-skill

# Check all skills in a repo
skillmark check

# Fix issues
skillmark fix --dry-run
```

## GitHub Action

```yaml
- uses: michellepellon/skillmark@v1
  with:
    min-score: '80'
    format: sarif
```

## Scoring Categories

| Category | Weight |
|----------|--------|
| Spec Compliance | 40% |
| Description Quality | 20% |
| Content Efficiency | 15% |
| Composability & Clarity | 10% |
| Script Quality | 10% |
| Discoverability | 5% |

## What's Included

- 35 spec-compliance error rules (E001-E035)
- 28 best-practice warning rules (W001-W028)
- 14 quality scoring info rules (I001-I016)
- 7 Tier 2 experimental rules (off by default)
- 6 auto-fixable rules
- Terminal, JSON, SARIF v2.1.0, and Markdown output formats
- `.skillmark.toml` configuration with customizable weights and grade boundaries
- Pre-commit hook support

Built on the [AgentSkills.io](https://agentskills.io) specification, informed by [SkillsBench](https://github.com/benchflow-ai/skillsbench) findings.
