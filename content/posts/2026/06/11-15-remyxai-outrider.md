---
title: Remyx Outrider
date: 2026-06-11 15:46:41 +00:00
tags:
  - remyxai
  - GitHub Actions
draft: false
repo: https://github.com/remyxai/outrider
marketplace: https://github.com/marketplace/actions/remyx-outrider
version: v1.5.3
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/remyxai/outrider** to version **v1.5.3**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/remyx-outrider) to find the latest changes.

## What's Changed

**Small reliability patch for the self-review downgrade path.**

When the self-review gate downgrades from auto-PR to Issue (`issue_opened_self_review` status), the agent's working-tree diff is embedded in the Issue body so the maintainer can `git apply` it locally. Before this fix, that diff included the orchestrator's internal agent-facing prompts under `.remyx-recommendation/` (CONTEXT.md, GUARDRAILS.md, INVOCATION.md, PAPER.md, SPEC.md) — leaking orchestrator phrasing like "Honesty rules" and "orchestrator will reject the run as scaffold-shaped" into a maintainer-facing artifact.

Fix: filter `.remyx-recommendation/` from the captured diff via git pathspec exclusion at `git diff --staged` time. The diff returned is already clean — no post-parse filtering, no API or behavior change for non-scratchpad files.

325/325 tests pass (added 1 new test pinning `.remyx-recommendation/*` exclusion while verifying real code contributions are still included).
