---
title: Remyx Outrider
date: 2026-07-31 22:26:46 +00:00
tags:
  - remyxai
  - GitHub Actions
draft: false
repo: https://github.com/remyxai/outrider
marketplace: https://github.com/marketplace/actions/remyx-outrider
version: v1.7.44
dependentsNumber: "2"
actionType: Composite
actionSummary: |
  This GitHub Action automates the process of integrating new machine learning methods into existing codebases, ensuring that changes are validated and compared against current metrics. It supports various model backends and provides options for scheduling or dispatching actions to explore different papers. The action ensures no duplicate work is done by only considering a paper once per run and generates a narrative summary explaining why each candidate was chosen.
---


Version updated for **https://github.com/remyxai/outrider** to version **v1.7.44**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/remyx-outrider) to find the latest changes.

## Action Summary

This GitHub Action automates the process of integrating new machine learning methods into existing codebases, ensuring that changes are validated and compared against current metrics. It supports various model backends and provides options for scheduling or dispatching actions to explore different papers. The action ensures no duplicate work is done by only considering a paper once per run and generates a narrative summary explaining why each candidate was chosen.

## What's Changed

## Bundle leak prevention

The `.remyx-recommendation/` scratch bundle (SPEC.md, PAPER.md, INVOCATION.md, PR_TITLE.txt) is now written to `.git/info/exclude` at bundle-creation time, so downstream `git add -A` calls — refinement runs, dispatcher scripts, manual punch-ups — skip the bundle even without `commit_and_push`'s explicit rmtree. Belt-and-suspenders defense: `.git/info/exclude` is untracked, so it can't leak into the target repo's `.gitignore` and can't itself be committed.

Motivating incident: a manual punch-up on a customer-facing PR ran `git add -A` on a workdir that still held `PR_TITLE.txt`, staging the scratch file into the final diff.

## Compatibility

Composite action, no breaking changes. Pinned callers on `@v1` pick this up automatically.
