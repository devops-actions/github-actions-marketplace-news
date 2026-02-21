---
title: Loki Mode Code Review
date: 2026-02-21 21:29:34 +00:00
tags:
  - asklokesh
  - GitHub Actions
draft: false
repo: https://github.com/asklokesh/loki-mode
marketplace: https://github.com/marketplace/actions/loki-mode-code-review
version: v5.49.4
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/asklokesh/loki-mode** to version **v5.49.4**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/loki-mode-code-review) to find the latest changes.

## Action Summary

Loki Mode is an autonomous multi-agent development system that converts a Product Requirements Document (PRD) into a fully built, tested, and deployed product with minimal human intervention. It automates the software development lifecycle, including coding, testing, and deployment, while allowing human oversight for critical decisions. Key capabilities include multi-agent parallel execution, multi-provider support, and built-in benchmarking for quality assurance.

## Release notes


### Added
- `loki setup-skill` command: creates skill symlinks for all 3 providers (Claude, Codex, Gemini)
- `loki doctor` now checks skill symlinks for all 3 provider directories
- Multi-provider postinstall: `bin/postinstall.js` creates symlinks at `~/.claude/skills/`, `~/.codex/skills/`, and `~/.gemini/skills/`

### Changed
- README installation restructured: npm first, Homebrew second, Quick Start shows all 3 providers
- Git clone moved from primary README install to `docs/alternative-installations.md`
- `docs/INSTALLATION.md` restructured to lead with npm/Homebrew
- `docs/alternative-installations.md` updated: git clone with multi-provider symlink instructions
- Postinstall output shows per-provider skill status summary
- Version bumped to v5.49.4 across all version files


