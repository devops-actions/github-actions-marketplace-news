---
title: Skill Doctor
date: 2026-03-15 05:57:20 +00:00
tags:
  - marian2js
  - GitHub Actions
draft: false
repo: https://github.com/marian2js/skill-doctor
marketplace: https://github.com/marketplace/actions/skill-doctor
version: v0.1.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/marian2js/skill-doctor** to version **v0.1.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skill-doctor) to find the latest changes.

## Action Summary

The GitHub Action `skill-doctor` automates the static analysis of coding agent skill packages to identify issues such as metadata errors, broken resource links, weak trigger descriptions, and malformed evaluation files. It provides a comprehensive diagnostic score (0-100) with actionable insights, ensuring skill packages meet quality standards for routing, onboarding, and evaluations. This tool simplifies quality assurance and improves the reliability of agent skills through automated validation and scoring.

## Release notes

## Skill Doctor 0.1.0

Skill Doctor is a static diagnostics CLI for agent skills.

This first public release brings the core analyzer, a polished terminal UI inspired by React Doctor, and both npm and GitHub Action support for running skill health checks in local workflows and CI.

### Highlights

- Static analysis for agent skills and skill workspaces
- Validation for `SKILL.md` structure, metadata, and linked resources
- Trigger-quality and instruction-hygiene checks
- Evals validation for skill packages that include eval definitions
- Clear terminal reporting with workspace score, findings, and per-skill summaries
- JSON output for automation and CI integrations
- GitHub Action support via `action.yml`
- npm publishing via Trusted Publisher

### Install

```bash
npm install -g skill-doctor
```

### CLI usage

```bash
skill-doctor .
skill-doctor /path/to/skills --verbose
skill-doctor /path/to/skills --json
```

### GitHub Action

```yml
- uses: marian2js/skill-doctor@v0.1.0
  with:
    directory: .
```

### Notes

This is the initial public release, so the focus is on strong static checks, fast feedback, and an excellent CLI experience. Future releases will expand rule coverage, improve diagnostics, and add more automation-friendly workflows.

