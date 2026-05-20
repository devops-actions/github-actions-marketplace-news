---
title: Bernstein — Multi-Agent Orchestration
date: 2026-05-20 23:14:39 +00:00
tags:
  - sipyourdrink-ltd
  - GitHub Actions
draft: false
repo: https://github.com/sipyourdrink-ltd/bernstein
marketplace: https://github.com/marketplace/actions/bernstein-multi-agent-orchestration
version: v2.5.1
dependentsNumber: "5"
actionType: Composite
---


Version updated for **https://github.com/sipyourdrink-ltd/bernstein** to version **v2.5.1**.

- This action is used across all versions by **5** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/bernstein-multi-agent-orchestration) to find the latest changes.

## Action Summary

Bernstein is a Python-based deterministic scheduler designed to orchestrate multiple CLI coding agents to collaboratively achieve a single goal in parallel Git worktrees. It automates multi-agent task execution while providing robust compliance features, including an HMAC-signed audit chain, signed agent metadata, and detailed artifact lineage tracking. This tool streamlines workflows for teams that require transparent, traceable, and regulator-friendly operational processes.

## What's Changed

## What this patch is

Five fix commits had landed on main without triggering a patch publish, because the post-CI dispatcher was silently failing at startup. A required secret was being referenced in a reusable-workflow call before the receiving side had a chance to declare it optional, and GitHub Actions resolves that block at call-start. One commit short of the fix unblocks the rest.

## Fixes included

- `fix(security)` (#1705) - 12 CodeQL / Semgrep findings resolved, 23 dismissed with technical justification.
- `fix(observability)` (#1713) - Sonar scan workflow no longer skips on cancelled upstream CI; direct push trigger added.
- `fix(privacy)` (#1718) - residual operator hostnames scrubbed from docs and from a PR-comment template.
- `fix(routes)` (#1726) - three sync subprocess calls in async routes converted; eight bare-excepts narrowed.
- `fix(api)` (#1727) - intermittent 500 on `POST /tasks` was a real bug, not a Schemathesis flake. Validates at the request boundary now.

## Dispatcher

Restored in #1730. After this, the next CI-green push computes the conventional-commits delta automatically.

## Try it

```bash
pipx install --upgrade bernstein
```

Source: https://github.com/sipyourdrink-ltd/bernstein (Apache-2.0).

