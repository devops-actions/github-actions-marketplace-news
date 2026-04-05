---
title: SkillForge — SKILL.md quality check
date: 2026-04-05 22:00:12 +00:00
tags:
  - LiqunChen0606
  - GitHub Actions
draft: false
repo: https://github.com/LiqunChen0606/skillforge
marketplace: https://github.com/marketplace/actions/skillforge-skill-md-quality-check
version: v0.6.4
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/LiqunChen0606/skillforge** to version **v0.6.4**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skillforge-skill-md-quality-check) to find the latest changes.

## Action Summary

SkillForge is a GitHub Action and CLI tool designed to automate the validation, security scanning, and quality assessment of AI skill files (e.g., `SKILL.md`) used in Agent Skills. It detects structural issues, security vulnerabilities, and compliance errors, helping users identify and resolve problems like missing metadata, prompt-injection risks, and unsafe code patterns before deployment. Additionally, it assigns a quality grade to skill files, generates shareable badges, and integrates seamlessly into CI/CD workflows for consistent skill compliance enforcement.

## What's Changed

## Fixes the Linux wheel tag + Windows build

v0.6.2 and v0.6.3 had wheel-tagging issues that prevented installation on Linux x86_64 and Windows. v0.6.4 ships correctly-tagged wheels for all 5 platforms:

- `cp39-abi3` manylinux_2_17 x86_64 (fixed in this release)
- `cp39-abi3` manylinux_2_17 aarch64
- `cp39-abi3` macOS 10.12+ x86_64
- `cp39-abi3` macOS 11.0+ arm64
- `cp39-abi3` Windows x64

All wheels are stable-ABI (abi3-py39): one wheel per platform works on Python 3.9+, forward-compatible with 3.14+.

### Install

```bash
pip install aif-skillforge
```

### GitHub Action

```yaml
- uses: LiqunChen0606/skillforge@v0.6.4
```

### Pre-commit

```yaml
- repo: https://github.com/LiqunChen0606/skillforge
  rev: v0.6.4
  hooks:
    - id: aif-check
```

### What's in v0.6.x

- `aif check` — 10 lint + 6 OWASP AST10 security checks
- `aif score` — letter grade A+..F + Shields.io badge + SVG
- `aif scan` — security-only output
- `aif lint` — lint-only output
- Pre-commit hooks: `aif-check`, `aif-lint`, `aif-scan`, `aif-score`
- Claude Code plugin with `/lint-skill`, `/scan-skill`, `/score-skill`, `/sign-skill`, `/verify-skill`
