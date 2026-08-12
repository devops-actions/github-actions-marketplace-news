---
title: Remyx Outrider
date: 2026-08-12 06:00:58 +00:00
tags:
  - remyxai
  - GitHub Actions
draft: false
repo: https://github.com/remyxai/outrider
marketplace: https://github.com/marketplace/actions/remyx-outrider
version: v1.7.51
dependentsNumber: "2"
actionType: Composite
actionSummary: |
  **Outrider GitHub Action**: Automates the creation of draft pull requests (PRs) with detailed implementation notes and evidence of compliance. The action supports various trigger patterns such as alerts, search queries, pinned papers, or design briefs, ensuring that each PR is reviewed thoroughly by automatically generating a self-review section and checking for references cited, license flags, tests, convention alignment, and scope discipline. The action uses multiple backends like Anthropic Opus and z.ai GLM-5.2 to optimize the recommendation process.
---


Version updated for **https://github.com/remyxai/outrider** to version **v1.7.51**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/remyx-outrider) to find the latest changes.

## Action Summary

**Outrider GitHub Action**: Automates the creation of draft pull requests (PRs) with detailed implementation notes and evidence of compliance. The action supports various trigger patterns such as alerts, search queries, pinned papers, or design briefs, ensuring that each PR is reviewed thoroughly by automatically generating a self-review section and checking for references cited, license flags, tests, convention alignment, and scope discipline. The action uses multiple backends like Anthropic Opus and z.ai GLM-5.2 to optimize the recommendation process.

## What's Changed

Harden the agent runtime against prompt injection and GitHub-token leakage.

- Capability cut: PreToolUse Bash deny-gate for the spawned agent (package installs, network egress, `gh` writes, `git push`).
- Risky-surface signal: route-to-human flag (draft + label + PR note) on dependency-manifest / CI / hook / Dockerfile / `*.sh` diffs.
- Token handling: token-less clone config, ephemeral push (no `set-url` persistence), `GITHUB_TOKEN` withheld from the agent, fail-closed pre-push credential scan.
- Pre-install target deps before the agent runs (CI / `INPUT_PREINSTALL`).

Full changelog: #119
