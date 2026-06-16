---
title: Hosho Prompt Reviewer
date: 2026-06-16 15:55:44 +00:00
tags:
  - HOSHO-AI
  - GitHub Actions
draft: false
repo: https://github.com/HOSHO-AI/Hosho-prompt-optimization-public
marketplace: https://github.com/marketplace/actions/hosho-prompt-reviewer
version: v1.39.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/HOSHO-AI/Hosho-prompt-optimization-public** to version **v1.39.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/hosho-prompt-reviewer) to find the latest changes.

## What's Changed

## Convention check: improve mode now mirrors the standard pipeline exactly

v1.38.0 made the `require_reference` check diff-aware in **review** mode (flag only a removed reference). This release closes the matching gap in **improve** mode.

The standard pipeline runs **both** full scoring (absolute) **and** diff analysis (Pass 2) in improve mode. The convention check now does the same:

- **review** → removal-only (diff regression), mirrors `batchAnalyzeDiff`.
- **improve** → full-assessment gap (advisory) **+** the diff regression (honors config severity), deduped by required-doc path (a removal is the more specific framing and wins).

Before this, a PR that removed the security-doc link but kept the rules inline was flagged in review mode yet went silent in improve mode. Now both modes catch it, consistent with how factors and custom principles behave.

Internals: extracted `evaluateReferenceConvention(...)` as the single source of truth for both modes. Spec primitives unchanged → TS↔Python golden-vector parity preserved. 118 tests pass. Also bundles a pre-existing line-count-preserving fix to Jinja comment stripping in `resolveTemplateVariables`.
