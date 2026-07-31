---
title: CrewScore
date: 2026-07-30 23:46:12 +00:00
tags:
  - shmindmaster
  - GitHub Actions
draft: false
repo: https://github.com/shmindmaster/crewscore
marketplace: https://github.com/marketplace/actions/crewscore
version: v0.6.8
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  CrewScore is a GitHub Action that checks if AI agent prompts include written guardrails such as injection defense, human approval, cost limits, and stop conditions. It provides an offline, no API key, open rules checklist of 23 published controls to ensure safety in AI systems, helping teams identify gaps and improve prompt quality without relying on runtime red-teaming or LLMs.
---


Version updated for **https://github.com/shmindmaster/crewscore** to version **v0.6.8**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/crewscore) to find the latest changes.

## Action Summary

CrewScore is a GitHub Action that checks if AI agent prompts include written guardrails such as injection defense, human approval, cost limits, and stop conditions. It provides an offline, no API key, open rules checklist of 23 published controls to ensure safety in AI systems, helping teams identify gaps and improve prompt quality without relying on runtime red-teaming or LLMs.

## What's Changed


No scoring change. Ruleset remains `crewscore-hygiene@0.6.0`.

### Fixed

- **Toggling developer mode threw away an open review.** Re-rendering the
  results panel closed "Review suggested guardrails" and discarded any wording
  the reader had edited. Only a new score invalidates a review now; re-rendering
  the same result leaves it, and its edits, alone.

### Improved

- The browser suite retries twice on CI. A driver that presses a button during
  an `innerHTML` rebuild produces no click event at all — a person cannot hit
  that window, and a retried test still has to pass every assertion, so this
  tolerates the harness artifact without relaxing anything.

---


