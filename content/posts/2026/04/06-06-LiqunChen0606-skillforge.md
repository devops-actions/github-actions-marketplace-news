---
title: SkillForge — SKILL.md quality check
date: 2026-04-06 06:21:33 +00:00
tags:
  - LiqunChen0606
  - GitHub Actions
draft: false
repo: https://github.com/LiqunChen0606/skillforge
marketplace: https://github.com/marketplace/actions/skillforge-skill-md-quality-check
version: v0.7.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/LiqunChen0606/skillforge** to version **v0.7.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skillforge-skill-md-quality-check) to find the latest changes.

## Action Summary

SkillForge is a GitHub Action designed to automate the quality assurance process for AI skill files (`SKILL.md`) by providing linting, security checks, and compliance testing. It detects issues such as missing sections, security vulnerabilities (e.g., prompt injection, unsafe code patterns), and malformed metadata before deployment, ensuring skill files are clean and secure. Additionally, it generates grades and shareable badges to evaluate and showcase skill quality.

## What's Changed

## Three new features

### 1. `aif fix` — autofix SKILL.md

```bash
aif fix my-skill.md --write     # fix and overwrite
aif fix my-skill.md --check     # dry-run, exit 1 if changes needed (CI)
aif fix my-skill.md --diff      # show unified diff
```

Mechanically fixes 5 lint rules: NameFormat (kebab-case), missing frontmatter, oversized descriptions, missing required sections, empty blocks. Takes a broken skill from parse-error to A+ in one command.

### 2. `aif mcp-server` — MCP for Claude Desktop / Cursor

```json
{
  "mcpServers": {
    "skillforge": {
      "command": "aif",
      "args": ["mcp-server"]
    }
  }
}
```

4 tools: `check_skill`, `score_skill`, `scan_skill`, `fix_skill`. Any MCP client can invoke SkillForge natively.

### 3. Weekly skills leaderboard

[leaderboard/LEADERBOARD.md](leaderboard/LEADERBOARD.md) — GitHub Action scans for public SKILL.md files, grades with `aif score`, publishes ranked top-25 weekly.

### Install

```bash
pip install aif-skillforge   # cross-platform wheels
aif fix SKILL.md --write
aif score SKILL.md
```

### Wheels

Linux x86_64/aarch64, macOS x86_64/arm64, Windows x64, source distribution.
