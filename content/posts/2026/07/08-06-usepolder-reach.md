---
title: Polder Reach
date: 2026-07-08 06:20:08 +00:00
tags:
  - usepolder
  - GitHub Actions
draft: false
repo: https://github.com/usepolder/reach
marketplace: https://github.com/marketplace/actions/polder-reach
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/usepolder/reach** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/polder-reach) to find the latest changes.

## What's Changed

One number for design system adoption.

- **CLI:** `npx @usepolder/reach --library "@your/design-system"` scores any React repo with zero config. `--json` emits the versioned report (schemaVersion 1).
- **GitHub Action:** `uses: usepolder/reach@v1` posts a single PR comment (updated in place) with the score, the delta vs the base branch (computed in a temporary git worktree), and the leak count. Fork PRs degrade to the step summary.
- **Badge, zero infra:** pushes to the default branch commit `.polder/reach-badge.json` (shields.io endpoint schema) plus a static SVG fallback for private repos.
- **Leaks:** hardcoded hex colors and px values with file/line locations.

The score formula is not configurable. A score you can tune is a score nobody trusts.

🤖 Generated with [Claude Code](https://claude.com/claude-code)
