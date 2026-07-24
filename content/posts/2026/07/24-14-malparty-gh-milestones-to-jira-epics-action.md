---
title: GitHub Milestones → Jira Epics
date: 2026-07-24 14:05:50 +00:00
tags:
  - malparty
  - GitHub Actions
draft: false
repo: https://github.com/malparty/gh-milestones-to-jira-epics-action
marketplace: https://github.com/marketplace/actions/github-milestones-jira-epics
version: 1.0.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action mirrors repository milestones into Jira epics, ensuring one-way synchronization. It maintains an idempotent and safe operation, handling both scheduled runs and manual triggers. The action updates the epic's summary, description, due date, and labels as needed, while preserving existing manual edits in Jira.
---


Version updated for **https://github.com/malparty/gh-milestones-to-jira-epics-action** to version **1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/github-milestones-jira-epics) to find the latest changes.

## Action Summary

This GitHub Action mirrors repository milestones into Jira epics, ensuring one-way synchronization. It maintains an idempotent and safe operation, handling both scheduled runs and manual triggers. The action updates the epic's summary, description, due date, and labels as needed, while preserving existing manual edits in Jira.

## What's Changed

_GitHub Milestones → Jira Epics — v1.0.0_

Mirror a repository's GitHub milestones into Jira Cloud epics — one-way, idempotent, safe to run on a schedule.

## Core sync ♻️ 

- One epic per milestone, matched by a structural gh-ms-<number> label via exact JQL lookup — survives title edits and manual changes.
- Idempotent upsert: creates epics for new milestones, updates existing ones, and performs zero writes when nothing changed.
- Change detection: summary, description, and duedate are written only when they actually differ — no noisy Jira history or watcher spam.

## Field mapping 🔗 

- Summary = milestone title verbatim.
- Rich ADF description: "do not edit" notice, a closed/total issues closed header, the milestone description, and Open/Closed issue lists
— with pull requests excluded from both counts and lists, sorted deterministically.
- Due date set only when the milestone has one, and never cleared afterward.
- Start date never touched — a manually set start date always survives.
- Labels reconciled as a superset: adds gh-ms-<n> + your configured labels, never prunes labels a human added in Jira.
- Status sync by status category (done/new) — closes/reopens epics with milestone state, respects a manually set In Progress, and works across renamed or non-English statuses.

## Configuration & safety 🔒 

- Fully repo-agnostic: everything (project key, epic type id, extra labels, tokens) is an action input — nothing hardcoded.
- Dry-run mode to preview every create/update/transition without writing.
- only input/flag to scope a run to a single milestone (near-real-time on milestone events).
- Fail-fast auth preflight with an actionable message (including the classic-vs-scoped API-token pitfall), and Jira error responses surfaced in full — no opaque 400s.
- Bounded retry/backoff on rate limits and transient 5xx.
- Clear run summary and exit codes; outputs created / updated / unchanged / skipped.

