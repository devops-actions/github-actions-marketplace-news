---
title: Miso PR Review
date: 2026-06-11 15:51:11 +00:00
tags:
  - misospace
  - GitHub Actions
draft: false
repo: https://github.com/misospace/pr-reviewer-action
marketplace: https://github.com/marketplace/actions/miso-pr-review
version: v1.2.5
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/misospace/pr-reviewer-action** to version **v1.2.5**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/miso-pr-review) to find the latest changes.

## What's Changed

Behavior-fix release on the 1.2.x line (1.3.0 remains reserved for the native tool-calling work tracked in #197). One new opt-in input; no breaking changes.

## Fixes

- **Trivial PRs no longer escalate to the smart model on tool-planning hiccups** (#215): a failed tool-harness planning call previously counted as a blocker signal and re-ran the review on the smart model — observed burning smart-model runs on 5 of 6 renovate bumps in a k8s repo. A planning failure means the review ran with *less* evidence (the same situation as `tool_mode: off`), not that the PR is risky, so it no longer escalates by default. Opt back in with the new `escalate_on_tool_planning_failure: "true"` input (its own `tool_planning_failed` reason). Evidence-provider blockers and executed-tools-all-failed still escalate under `escalate_on_tool_or_evidence_blockers`.
- **Diff-aware low-confidence floor** (#215): the 200-char minimum review length was calibrated for app-code diffs and punished correct short reviews of one-line bumps. Diffs with ≤10 changed lines now use an 80-char floor (bare "LGTM." non-reviews still escalate); larger diffs keep 200; a missing/unreadable diff fails closed to 200. The populated-Unknowns-section heuristic is unchanged at any length.

## Docs

- README restructured for readability; AGENTS.md refreshed (#214).

## New inputs

`escalate_on_tool_planning_failure` (default `false`).
