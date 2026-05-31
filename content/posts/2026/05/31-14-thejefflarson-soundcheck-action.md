---
title: Soundcheck Security Review
date: 2026-05-31 14:40:56 +00:00
tags:
  - thejefflarson
  - GitHub Actions
draft: false
repo: https://github.com/thejefflarson/soundcheck-action
marketplace: https://github.com/marketplace/actions/soundcheck-security-review
version: v1.0.16
dependentsNumber: "11"
actionType: Composite
---


Version updated for **https://github.com/thejefflarson/soundcheck-action** to version **v1.0.16**.

- This action is used across all versions by **11** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/soundcheck-security-review) to find the latest changes.

## Action Summary

The "Soundcheck Security Review" GitHub Action automates security reviews for repositories, focusing on files changed in pull requests or performing full-repository scans on scheduled runs. It identifies and ranks vulnerabilities based on severity using Soundcheck's extensive skills aligned with OWASP standards, comments findings on pull requests, and can automatically fix issues by committing changes. This action helps developers streamline security assessments, address critical risks, and enforce merge gating based on identified issues.

## What's Changed

Pin soundcheck → v1.12.0.

Highlights (see soundcheck v1.12.0 release notes for detail):
- Skills now describe principles, not language-specific code examples
- New async auto-review hook (Stop + asyncRewake) — opt-out via plugin user-config
- `agents/` moved to `.claude/agents/` for layout symmetry

Action contract is unchanged — same `--diff-base` interface, same `<soundcheck-findings>`
tag parsing, same `.claude/skills/security-review/SKILL.md` path. The action runs
`security-review-action.py` (which the auto-review hook also uses internally but only
inside Claude Code sessions, not in CI).

`@v1` now points here.
