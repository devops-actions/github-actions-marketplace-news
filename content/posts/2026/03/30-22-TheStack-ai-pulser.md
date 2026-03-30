---
title: Pulser — Claude Code Skill Linter
date: 2026-03-30 22:18:52 +00:00
tags:
  - TheStack-ai
  - GitHub Actions
draft: false
repo: https://github.com/TheStack-ai/pulser
marketplace: https://github.com/marketplace/actions/pulser-claude-code-skill-linter
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/TheStack-ai/pulser** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pulser-claude-code-skill-linter) to find the latest changes.

## Action Summary

Pulser is a GitHub Action and CLI tool designed to diagnose, classify, and automatically fix issues in `SKILL.md` files based on defined diagnostic rules from Anthropic's principles for Claude Code skills. It automates the process of evaluating skills for compliance, optimizing their structure, and ensuring best practices, helping developers maintain high-quality and effective code skills. Key capabilities include auto-classification, tailored prescriptions for improvements, error reporting, and automated fixes.

## What's Changed

## What's New

### GitHub Marketplace Action

Pulser is now available as a **GitHub Action** for CI/CD pipelines. Lint your Claude Code skills on every push.

```yaml
- uses: TheStack-ai/pulser@v1
  with:
    path: '.claude/skills'
    strict: 'true'
```

**Outputs:** `score`, `errors`, `warnings`, `total` — use them in downstream steps.

### Community & Project Health

- CI workflow (Node 18/20/22 matrix)
- CONTRIBUTING.md, SECURITY.md, CODE_OF_CONDUCT.md
- Issue templates (bug report, feature request) + PR template
- GitHub Discussions enabled
- Social preview image
- Fixed badge URLs and added CI/downloads/stars badges

### Full Changelog
https://github.com/TheStack-ai/pulser/compare/v0.4.0...v1.0.0
