---
title: Sigbound
date: 2026-07-23 06:24:01 +00:00
tags:
  - surya-koritala
  - GitHub Actions
draft: false
repo: https://github.com/surya-koritala/sigbound
marketplace: https://github.com/marketplace/actions/sigbound
version: v0.3.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  Sigbound automates the process of running multiple AI coding agents on one repository in parallel, merging their work automatically. It handles conflicts by using a model to resolve them and ensures that only changes that build and pass your tests are landed. The action is designed to be flexible, allowing users to bring their own model for planning, agent execution, conflict resolution, and merge repair.
---


Version updated for **https://github.com/surya-koritala/sigbound** to version **v0.3.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sigbound) to find the latest changes.

## Action Summary

Sigbound automates the process of running multiple AI coding agents on one repository in parallel, merging their work automatically. It handles conflicts by using a model to resolve them and ensures that only changes that build and pass your tests are landed. The action is designed to be flexible, allowing users to bring their own model for planning, agent execution, conflict resolution, and merge repair.

## What's Changed

Run AI coding agents in parallel on one git repo and auto-merge their verified work — nothing lands unless it builds and passes your tests.

**Highlights in 0.3.0**
- `-verify-bisect` — when the combined tree fails verify, land the verified green subset instead of losing everything
- `-verify-cache` — skip re-verifying trees already proven green (keyed by tree OID)
- Run manifest + `sig replay` — every landing is reproducible provenance
- `-resume` — pick up an interrupted run without re-running finished agents
- `-publish` — push the landed commit and open a PR/MR with your own tooling
- This GitHub Action — install a released `sig`, run it from typed inputs, gate your job on the outcome

**Use it**
```yaml
- uses: surya-koritala/sigbound@v0.3.0
  with:
    agent: 'claude -p --permission-mode acceptEdits "$SIGBOUND_TASK"'
    goal: "Add CSV export, due dates, and a summary command"
    verify: "go build ./... && go test ./..."
