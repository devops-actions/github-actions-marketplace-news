---
title: Repo Anti-Rot
date: 2026-08-03 14:53:00 +00:00
tags:
  - YpCIIIaK
  - GitHub Actions
draft: false
repo: https://github.com/YpCIIIaK/repo-janitor
marketplace: https://github.com/marketplace/actions/repo-anti-rot
version: v1.0.0
dependentsNumber: "0"
actionType: Node
nodeVersion: 20
actionSummary: |
  Repo Anti-Rot is a repository health and decay monitor that scans codebases for various types of rot such as undocumented environment variables, abandoned dependencies, stale branches, aging TODOs, committed secrets, dead code, disabled tests, and binary bloat. It scores the repository A-F and provides a dashboard with everything in one place. Optionally, it adds an AI pass to provide short, decisive verdicts on each finding via OpenRouter.
---


Version updated for **https://github.com/YpCIIIaK/repo-janitor** to version **v1.0.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/repo-anti-rot) to find the latest changes.

## Action Summary

Repo Anti-Rot is a repository health and decay monitor that scans codebases for various types of rot such as undocumented environment variables, abandoned dependencies, stale branches, aging TODOs, committed secrets, dead code, disabled tests, and binary bloat. It scores the repository A-F and provides a dashboard with everything in one place. Optionally, it adds an AI pass to provide short, decisive verdicts on each finding via OpenRouter.

## What's Changed

First release in which the Action can actually be installed. Everything it does
was already built and tested; only the packaging was missing, and it was missing
quietly — the snippet in the README resolved to a manifest that was not at the
repository root, pointing at a bundle that was git-ignored.

## What it does

- Scans a repository with 26 checks — secrets, vulnerable and abandoned
  dependencies, dead code, stale branches, aging TODOs, dead links, CI health,
  license risk, duplicated code — and scores it A–F.
- `fail-on: C` (or any letter) fails the job at or below that grade.
- `sarif-file:` writes SARIF 2.1.0 for `github/codeql-action/upload-sarif`, so
  findings land in Security ▸ Code scanning and inline on PR diffs.
- `comment-on-pr:` posts one sticky summary comment, updated in place.
- Outputs `score`, `grade` and `issues` for later steps.
- `dashboard-url:` + `token:` upload the report to a self-hosted dashboard.
  Optional — the Action is useful with no server at all.

## Usage

```yaml
- uses: actions/checkout@v4
  with: { fetch-depth: 0 } # full history, so finding ages are real
- uses: YpCIIIaK/repo-janitor@v1
  with:
    fail-on: D
    sarif-file: repo-anti-rot.sarif

@v1 follows the latest v1 release. That is convenient and it is also a
supply-chain risk — this project's own workflow-security check flags any action
pinned to a moving tag, including this one. Pin the full SHA if you would rather
audit upgrades yourself.

No account, no signup. npx repo-anti-rot scan . runs the same engine locally.
