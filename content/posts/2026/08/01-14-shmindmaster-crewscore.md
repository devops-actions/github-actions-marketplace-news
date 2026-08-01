---
title: CrewScore
date: 2026-08-01 14:00:27 +00:00
tags:
  - shmindmaster
  - GitHub Actions
draft: false
repo: https://github.com/shmindmaster/crewscore
marketplace: https://github.com/marketplace/actions/crewscore
version: v0.6.9
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  CrewScore is an offline tool that checks AI agent prompts for missing written safeguards. It provides a checklist of 23 published controls and identifies gaps in coverage. This helps ensure that prompts cover essential safety features, such as human approval and cost limits, without relying on API keys or LLMs.
---


Version updated for **https://github.com/shmindmaster/crewscore** to version **v0.6.9**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/crewscore) to find the latest changes.

## Action Summary

CrewScore is an offline tool that checks AI agent prompts for missing written safeguards. It provides a checklist of 23 published controls and identifies gaps in coverage. This helps ensure that prompts cover essential safety features, such as human approval and cost limits, without relying on API keys or LLMs.

## What's Changed


No scoring change. Ruleset remains `crewscore-hygiene@0.6.0`.

### Fixed

- **The public corpus was labeled more strongly than its provenance allows.**
  CrewScore now says "production-labeled agent system prompts" everywhere,
  rather than implying that independent production use was verified.
- **Owner auto-merge could report success without enabling or completing the
  merge.** The controller now retries GitHub's transient merge state, merges an
  already-clean PR only at its exact expected head, and fails closed on every
  other error. Six executable state-machine tests cover the race paths.

### Improved

- The package and public site now lead with the browser-local instruction
  preflight for people shipping AI assistants, while keeping CI as an optional
  recurring gate.
- Package metadata names the maintainer explicitly, and stale release-demo
  automation that no longer represented the product has been removed.

---


