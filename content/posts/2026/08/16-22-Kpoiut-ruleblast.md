---
title: RuleBlast
date: 2026-08-16 22:24:28 +00:00
tags:
  - Kpoiut
  - GitHub Actions
draft: false
repo: https://github.com/Kpoiut/ruleblast
marketplace: https://github.com/marketplace/actions/ruleblast
version: v2.2.1
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  RuleBlast is a Git extension that analyzes repository changes to identify all files that inherit specific changes, including those in Codex, Claude Code, Gemini CLI, and Copilot CLI. It provides a detailed diff of the blast radius, showing which files have been affected by a change across different tools. This helps users understand how their changes propagate through the system and can detect anomalies or unintended consequences.
---


Version updated for **https://github.com/Kpoiut/ruleblast** to version **v2.2.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ruleblast) to find the latest changes.

## Action Summary

RuleBlast is a Git extension that analyzes repository changes to identify all files that inherit specific changes, including those in Codex, Claude Code, Gemini CLI, and Copilot CLI. It provides a detailed diff of the blast radius, showing which files have been affected by a change across different tools. This helps users understand how their changes propagate through the system and can detect anomalies or unintended consequences.

## What's Changed

Companion 2.2.1 for Marketplace / Open VSX. Do not overwrite Marketplace 2.2.0.

- 128x128 PNG icon in `ruleblast-companion-2.2.1.vsix`
- Verify builds once before `npm run check`; install smoke reuses `dist/cli.js`
- Windows 8.3 path uses `cmd %~sI` with an env var and `windowsVerbatimArguments`
- Test budgets stay 15s / 120s

Published npm CLI remains [ruleblast@2.2.0](https://www.npmjs.com/package/ruleblast/v/2.2.0). This tag is not a new npm version.
