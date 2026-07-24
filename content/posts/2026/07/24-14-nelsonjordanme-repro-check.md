---
title: repro-check runnability
date: 2026-07-24 14:00:20 +00:00
tags:
  - nelsonjordanme
  - GitHub Actions
draft: false
repo: https://github.com/nelsonjordanme/repro-check
marketplace: https://github.com/marketplace/actions/repro-check-runnability
version: v0.11.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The repro-check GitHub Action automates the process of running and troubleshooting old research code, helping to identify and fix issues such as missing files, outdated dependencies, and removed APIs. It provides a runnability scaffold for reproducing computational papers by finding scripts, attempting to run them, and applying known fixes until they either run successfully or provide detailed information on where they stopped and what needs to be done next.
---


Version updated for **https://github.com/nelsonjordanme/repro-check** to version **v0.11.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/repro-check-runnability) to find the latest changes.

## Action Summary

The repro-check GitHub Action automates the process of running and troubleshooting old research code, helping to identify and fix issues such as missing files, outdated dependencies, and removed APIs. It provides a runnability scaffold for reproducing computational papers by finding scripts, attempting to run them, and applying known fixes until they either run successfully or provide detailed information on where they stopped and what needs to be done next.

## What's Changed

`--ai-suggest` asks an LLM to draft a diagnosis + suggested fix on a hand-off, using YOUR OWN ANTHROPIC_API_KEY or OPENAI_API_KEY (your machine, your bill). Ships with no key of its own; no key set = feature off, no fallback. The suggestion is flagged, never auto-applied, and never counted as a fix. `pip install --upgrade repro-check` — https://pypi.org/project/repro-check/0.11.0/
