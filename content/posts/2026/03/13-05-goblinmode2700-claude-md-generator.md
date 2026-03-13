---
title: CLAUDE.md Generator
date: 2026-03-13 05:48:00 +00:00
tags:
  - goblinmode2700
  - GitHub Actions
draft: false
repo: https://github.com/goblinmode2700/claude-md-generator
marketplace: https://github.com/marketplace/actions/claude-md-generator
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/goblinmode2700/claude-md-generator** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/claude-md-generator) to find the latest changes.

## Action Summary

The README appears to list various tools and resources designed to support Claude Code users and related workflows. These tools automate tasks like generating CLAUDE.md files, analyzing job descriptions, scoring resumes for ATS compatibility, and planning agile sprints, providing users with streamlined and efficient solutions for technical writing, project planning, and job application processes.

## Release notes

## CLAUDE.md Generator GitHub Action

Automatically generate a CLAUDE.md governance file for any repository.

### Features
- Auto-detects tech stack: TypeScript, Python, Go, Rust, Ruby
- Detects 20+ frameworks: Next.js, React, FastAPI, Django, Gin, Axum, Rails, and more
- Detects tools: Docker, Terraform, Vercel, Prisma, Drizzle, Tailwind, ESLint, Ruff, etc.
- 3 governance styles: minimal, standard, comprehensive
- Monorepo support
- Dry-run mode for previewing
- Zero dependencies — pure bash

### Quick Start
```yaml
- uses: goblinmode2700/claude-md-generator@v1
  with:
    style: standard
```

Full docs: https://github.com/goblinmode2700/claude-md-generator
