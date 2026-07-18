---
title: Agent Done Or Not
date: 2026-07-18 14:26:49 +00:00
tags:
  - mohamedzhioua
  - GitHub Actions
draft: false
repo: https://github.com/mohamedzhioua/agent-done-or-not
marketplace: https://github.com/marketplace/actions/agent-done-or-not
version: v0.13.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This GitHub Action, agent-done-or-not, ensures that AI coding agents verify tasks before declaring success. It captures every check with a tamper-evident receipt (command + exit code + SHA-256 hash of the output) and blocks the agent from finishing until the most recent check is fresh and passing.
---


Version updated for **https://github.com/mohamedzhioua/agent-done-or-not** to version **v0.13.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-done-or-not) to find the latest changes.

## Action Summary

This GitHub Action, agent-done-or-not, ensures that AI coding agents verify tasks before declaring success. It captures every check with a tamper-evident receipt (command + exit code + SHA-256 hash of the output) and blocks the agent from finishing until the most recent check is fresh and passing.

## What's Changed

## [0.13.0] — 2026-07-18

The PR Receipts release. Adds a `review-pr` subcommand (and Action `mode:
review-pr`) that re-executes an AI-authored PR's claimed checks. Additive — no
change to existing subcommands or the receipt format.

### Added
- **`review-pr` subcommand** (`done-gate.sh review-pr` / `done-gate.ps1
  review-pr`), with `--body <file|->`, `--commits [--base <ref>]`, and `--json`.
  Parses a PR description's testable claims ("tests pass", "lint clean", "build
  succeeds"), auto-resolves the project's REAL commands from its manifests
  (`package.json`, `pyproject.toml`, `go.mod` — three ecosystems for v1),
  re-executes them, and prints a receipt splitting claims into **RE-EXECUTED**,
  **ASSERTED** (recognized but no re-executable command), and **UNPARSED**. Never
  the word "VERIFIED": a green re-run proves the command passed, not that the PR
  is correct. Exits non-zero if a re-executed claim fails. The re-run command is
  resolved only from the manifests — never from PR text — so a PR cannot inject a
  command.
- **Action `mode: review-pr`** ("PR Receipts") with a `pr-body` input, a
  documented untrusted-PR trust model (CI-only, `pull_request` not
  `pull_request_target`, no secrets), and job-summary + sticky-PR-comment output.
- **`docs/pr-receipts.md`** — the PR Receipts page: how it works, usage, the trust
  model, and a ready-to-use GitHub Action recipe.


