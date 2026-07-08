---
title: Skill Doctor Quality Gate
date: 2026-07-08 14:56:13 +00:00
tags:
  - San-Z1
  - GitHub Actions
draft: false
repo: https://github.com/San-Z1/skill-doctor
marketplace: https://github.com/marketplace/actions/skill-doctor-quality-gate
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/San-Z1/skill-doctor** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skill-doctor-quality-gate) to find the latest changes.

## What's Changed

Skill Doctor is a CI quality gate for Agent Skills.

It catches vague triggers, broken resource links, oversized `SKILL.md` files, overlapping skills, and broad tool hints before they land in a repository.

## Quick Start

```yaml
- uses: San-Z1/skill-doctor@v1
  with:
    path: skills
    fail-on: warning
```

## Highlights

- Workflow annotations, Markdown, JSON, and SARIF output
- Quality score and grade
- Static review only; does not execute scanned skill scripts
- Packaged Agent Skill included
