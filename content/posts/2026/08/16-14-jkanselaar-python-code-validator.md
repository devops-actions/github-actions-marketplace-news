---
title: Validate AI-generated Python
date: 2026-08-16 14:20:16 +00:00
tags:
  - jkanselaar
  - GitHub Actions
draft: false
repo: https://github.com/jkanselaar/python-code-validator
marketplace: https://github.com/marketplace/actions/validate-ai-generated-python
version: v1.22.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action automates Python code validation and repair, providing comprehensive checks including syntax and lint diagnostics, AST security policy, bandit pass, credential scan, and deterministic repair. It allows users to specify the intended functionality through assertions or doctest lines, ensuring that the code meets its requirements before being executed or repaired. The service runs within a read-only filesystem environment and charges based on usage, with a free tier providing up to 25 static checks per day.
---


Version updated for **https://github.com/jkanselaar/python-code-validator** to version **v1.22.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/validate-ai-generated-python) to find the latest changes.

## Action Summary

This GitHub Action automates Python code validation and repair, providing comprehensive checks including syntax and lint diagnostics, AST security policy, bandit pass, credential scan, and deterministic repair. It allows users to specify the intended functionality through assertions or doctest lines, ensuring that the code meets its requirements before being executed or repaired. The service runs within a read-only filesystem environment and charges based on usage, with a free tier providing up to 25 static checks per day.

## What's Changed

One key per repository instead of one per run: the action keeps its free key in the workflow cache, so the 25 checks a day are a limit the repository can actually reach rather than a counter that restarts every run.

The run now leaves one comment on the pull request, edited in place on later pushes: what was accepted, what was repaired, and what is left of the day's allowance. It needs `permissions: pull-requests: write`; without it nothing is written and the job is unaffected, and `comment: "false"` turns it off.

`validate.py` is again the same program the service serves at `/v1/client`, which also brings `--write` and the remedy text from a refusal to this copy.
