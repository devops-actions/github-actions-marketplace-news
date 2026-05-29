---
title: rekipedia — AI Codebase Wiki
date: 2026-05-29 22:46:22 +00:00
tags:
  - unrealandychan
  - GitHub Actions
draft: false
repo: https://github.com/unrealandychan/rekipedia
marketplace: https://github.com/marketplace/actions/rekipedia-ai-codebase-wiki
version: v0.18.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/unrealandychan/rekipedia** to version **v0.18.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rekipedia-ai-codebase-wiki) to find the latest changes.

## Action Summary

Rekipedia is a GitHub Action designed to transform a code repository into an AI-ready knowledge base, enabling automated code documentation, architectural analysis, and AI-assisted Q&A. It solves common challenges such as onboarding new developers, preventing codebase misinterpretation by AI agents, and maintaining up-to-date documentation by indexing code, generating wiki pages, detecting architectural hotspots, and providing file-level context with citations. Key features include automated Q&A, dependency analysis, incremental updates, and integration with Model Context Protocol (MCP)-aware AI agents for enhanced development workflows.

## What's Changed

## Team Sync — Conflict-Free Collaborative Wiki

This release ships the full team sync feature set for distributed teams:

### New Commands
- `reki export --format bundle` — deterministic, content-addressed wiki snapshot with stable `bundle_id` and per-page hash trailers
- `reki merge <A> <B> [--base BASE]` — three-way wiki merge; last-write-wins on unchanged pages, conflict markers on genuine divergence
- `reki merge-driver BASE OURS THEIRS` — git merge driver; exits 0 on clean merge, 1 on conflict
- `reki pull [URL]` — fetch and merge a remote bundle over HTTPS, S3 (`rekipedia[aws]`), or GCS (`rekipedia[gcs]`)
- `reki watch . --publish` — auto-publishes wiki after every incremental update

### New Flags
- `reki init --with-merge-driver` — registers `.gitattributes` + `.git/config` merge driver so `git pull` never produces `<<<<<<` conflicts in generated wiki files
- `reki init --with-ci --with-upload s3|gcs` — adds an S3/GCS bundle upload step to the generated GitHub Actions workflow

### New Config Keys
- `team.sync_dir` — default publish target for `reki watch --publish`
- `team.auto_watch_publish: true` — enables publish automatically on watch
- `team.remote_url` — default remote URL for `reki pull`

### Issues closed
#182 #183 #184 #185 #186 #187
