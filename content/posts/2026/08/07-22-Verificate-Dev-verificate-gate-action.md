---
title: Verificate Gate
date: 2026-08-07 22:25:04 +00:00
tags:
  - Verificate-Dev
  - GitHub Actions
draft: false
repo: https://github.com/Verificate-Dev/verificate-gate-action
marketplace: https://github.com/marketplace/actions/verificate-gate
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The Verificate Gate GitHub Action is designed to block pull requests that contain broken AI code, such as hallucinated APIs, mock/placeholder detections, or reward-gaming tests. It automates the process of checking every changed code file through a set of deterministic reality gates and fails the check on a veto, ensuring that only clean and reliable changes are allowed to merge into the repository. The action provides a clear and concise way to maintain quality in AI-driven projects by identifying potential issues early.
---


Version updated for **https://github.com/Verificate-Dev/verificate-gate-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/verificate-gate) to find the latest changes.

## Action Summary

The Verificate Gate GitHub Action is designed to block pull requests that contain broken AI code, such as hallucinated APIs, mock/placeholder detections, or reward-gaming tests. It automates the process of checking every changed code file through a set of deterministic reality gates and fails the check on a veto, ensuring that only clean and reliable changes are allowed to merge into the repository. The action provides a clear and concise way to maintain quality in AI-driven projects by identifying potential issues early.

## What's Changed

The merge gate for AI-written code. Add one workflow and Verificate reviews every changed code file on a pull request through 17 deterministic reality gates + a frontier-model review. A veto fails the check and blocks the merge until it's fixed.

Why: ask a model "is this OK to merge?" and, in a natural workflow, it misses the failures agents make most — reward-gaming tests and hallucinated APIs. On a planted-defect corpus, a frontier model reviewing its own diff caught these 0/6; this gate caught both 6/6, with 0 false positives on clean code.

Add it in 5 lines:

    - uses: Verificate-Dev/verificate-gate-action@v1
      with:
        verificate-api-key: ${{ secrets.VERIFICATE_API_KEY }}   # optional; free tier works without
        fail-on: reject

Then make `verificate-gate` a required status check.

Safe by design: fails closed only on a real veto; fails open on any infra error, so a gate outage never blocks your team. Reviews only changed files, no code executed. Free tier, no signup to try.

Full benchmark + reproducible scripts: https://github.com/Verificate-Dev/verificate-mcp-quickstart/blob/master/COMPARISON.md

Attach binaries / files: leave empty — Actions ship as source, no artifact needed.
