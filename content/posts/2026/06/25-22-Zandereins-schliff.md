---
title: AGENTS.md Lint (Schliff)
date: 2026-06-25 22:18:36 +00:00
tags:
  - Zandereins
  - GitHub Actions
draft: false
repo: https://github.com/Zandereins/schliff
marketplace: https://github.com/marketplace/actions/agents-md-lint-schliff
version: v8.3.0
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/Zandereins/schliff** to version **v8.3.0**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agents-md-lint-schliff) to find the latest changes.

## What's Changed

## AGENTS.md scoring profile + AGENTS.md Lint Action

- AGENTS.md is now scored on a dedicated headline (0.5*structure + 0.5*efficiency) instead of the SKILL.md rubric — a well-formed AGENTS.md scores a defensible B/A instead of a capped ~28/None, with no "add an eval suite" warning. Other formats byte-identical. (#67)
- GitHub Action rebranded to "AGENTS.md Lint": action.yml at repo root, defaults to scoring a root AGENTS.md, posts a scored PR comment. Use as `uses: Zandereins/schliff@v1`. (#66, #68, #69)
- Fix: the Action's PR comment no longer renders unmeasured dimensions as a misleading 0/100. (#68)

End-to-end verified: a fresh install of 8.3.0 scores a well-formed AGENTS.md at 92.5 (8.2.0 gave 31.3 + the eval-suite warning). 1238 tests green.

Full changelog: https://github.com/Zandereins/schliff/blob/main/CHANGELOG.md
