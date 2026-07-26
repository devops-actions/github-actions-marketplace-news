---
title: theiterate — CI for prompts
date: 2026-07-26 22:24:51 +00:00
tags:
  - theIterate
  - GitHub Actions
draft: false
repo: https://github.com/theIterate/theiterate-action
marketplace: https://github.com/marketplace/actions/theiterate-ci-for-prompts
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action automates prompt evaluation in [theiterate], ensuring that new prompts do not regress against the live version. It compares candidate pass rates and exits non-zero if there is a regression or if the pass rate falls below an absolute floor. The action supports re-evaluating the latest version stored in theiterate or evaluating a specific prompt file from your repository as the candidate.
---


Version updated for **https://github.com/theIterate/theiterate-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/theiterate-ci-for-prompts) to find the latest changes.

## Action Summary

This GitHub Action automates prompt evaluation in [theiterate], ensuring that new prompts do not regress against the live version. It compares candidate pass rates and exits non-zero if there is a regression or if the pass rate falls below an absolute floor. The action supports re-evaluating the latest version stored in theiterate or evaluating a specific prompt file from your repository as the candidate.

## What's Changed

**theiterate — CI for prompts.** Fail a pull request when a prompt change quietly regresses.

On every PR, this Action runs your prompt's test set in theiterate, compares the candidate's pass rate against the current live version, and exits non-zero on a regression — so a bad prompt never ships.

### Usage
```yaml
- uses: theIterate/theiterate-action@v1
  with:
    api-key: ${{ secrets.THEITERATE_API_KEY }}
    prompt: support-classifier
    # body-file: prompts/support-classifier.txt   # optional: evaluate a file in your repo
    # min-pass-rate: "0.9"                          # optional: absolute floor
