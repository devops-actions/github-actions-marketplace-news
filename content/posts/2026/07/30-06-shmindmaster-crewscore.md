---
title: CrewScore
date: 2026-07-30 06:50:48 +00:00
tags:
  - shmindmaster
  - GitHub Actions
draft: false
repo: https://github.com/shmindmaster/crewscore
marketplace: https://github.com/marketplace/actions/crewscore
version: v0.6.1
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  CrewScore is an offline, open-source tool that automates the identification of missing written guardrails in AI agent prompts. It checks for controls such as injection defense, human approval, cost limits, and stop conditions across 23 published controls. The tool scans prompt text and `SYSTEM_PROMPT`/`system_prompt` strings in source code files. By providing a checklist of these controls, CrewScore helps teams identify and address potential safety gaps in their AI agent prompts without relying on API keys or LLMs.
---


Version updated for **https://github.com/shmindmaster/crewscore** to version **v0.6.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/crewscore) to find the latest changes.

## Action Summary

CrewScore is an offline, open-source tool that automates the identification of missing written guardrails in AI agent prompts. It checks for controls such as injection defense, human approval, cost limits, and stop conditions across 23 published controls. The tool scans prompt text and `SYSTEM_PROMPT`/`system_prompt` strings in source code files. By providing a checklist of these controls, CrewScore helps teams identify and address potential safety gaps in their AI agent prompts without relying on API keys or LLMs.

## What's Changed


No scoring change. Ruleset remains `crewscore-hygiene@0.5.0`.

### Improved

- **`export-eval`** maps offline missing controls into Promptfoo starter cases,
  garak probe suggestions, ruleset/version headers, optional `--provider`, and a
  prompt-free `crewscore-eval-manifest.json`. Still does not run live evals.
- **`assess-vendor`** JSON schema (`schema_version`, theme metadata per answer,
  `next_crewscore_checks` with published control IDs and suggested CLI). HTML
  and console show follow-ups for your prompts/CI, not a vendor grade.
- **Metrics contract** centralizes event/property allowlists in
  `crewscore/metrics.py` with parity tests against `analytics.js`.
- **`python -m crewscore`** via `crewscore/__main__.py`.
- **Machine merge gates:** required CI checks on `main` (no required human
  reviews); owner same-repo PRs auto-squash-merge when green.
- **Release automation:** `workflow_dispatch` cut-tag job + `scripts/cut_release.py`
  so version tags are agent-cuttable without code-review theater.
- **Distribution pack generator:** `scripts/generate_dist_pack.py` stages channel
  drafts from repo truth (no interview backlog).

### Documentation

- Regenerated **architecture**, **scoring-and-controls**, **github-action**,
  **development**, and **automation** guides.
- Stable redirects: `docs/scoring.md`, `docs/scoring-governance.md`, `docs/ci.md`.
- Inventory: [cleanup-and-completion.md](cleanup-and-completion.md).
- Human process theater removed from launch policy: no PMF interview gate;
  strategy defaults locked in automation.md.

---



