---
title: SkillSeal Agent Skill Linter
date: 2026-08-29 14:05:58 +00:00
tags:
  - pespinel
  - GitHub Actions
draft: false
repo: https://github.com/pespinel/SkillSeal
marketplace: https://github.com/marketplace/actions/skillseal-agent-skill-linter
version: v0.23.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  SkillSeal is a CLI tool that lints, scores, and routing-tests `SKILL.md` files for best practices. It catches issues such as invalid frontmatter, vague descriptions, oversized files, dangling file references, hardcoded paths, OS-specific commands, and more before an agent can execute the skill.
---


Version updated for **https://github.com/pespinel/SkillSeal** to version **v0.23.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skillseal-agent-skill-linter) to find the latest changes.

## Action Summary

SkillSeal is a CLI tool that lints, scores, and routing-tests `SKILL.md` files for best practices. It catches issues such as invalid frontmatter, vague descriptions, oversized files, dangling file references, hardcoded paths, OS-specific commands, and more before an agent can execute the skill.

## What's Changed

- fix(quality): don't flag markdown links inside code spans as dangling
- fix(metadata): recognize Claude Code's documented frontmatter extensions

**Full Changelog**: https://github.com/pespinel/SkillSeal/compare/v0.22.0...v0.23.0
