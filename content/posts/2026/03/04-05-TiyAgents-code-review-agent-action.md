---
title: Inline PR Review Agent
date: 2026-03-04 05:41:55 +00:00
tags:
  - TiyAgents
  - GitHub Actions
draft: false
repo: https://github.com/TiyAgents/code-review-agent-action
marketplace: https://github.com/marketplace/actions/inline-pr-review-agent
version: v1.0.2
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/TiyAgents/code-review-agent-action** to version **v1.0.2**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/inline-pr-review-agent) to find the latest changes.

## Action Summary

The AI Code Review Agent GitHub Action automates comprehensive code reviews for pull requests by leveraging OpenAI's Agents SDK. It evaluates changed files based on specified filters, applying multi-dimensional analysis (e.g., general, security, performance, testing) in structured, iterative rounds. The action streamlines review workflows, providing inline comments and summary feedback, while managing coverage, duplication, and budget constraints effectively.

## Release notes

[![Build and Test](https://github.com/TiyAgents/code-review-agent-action/actions/workflows/self-test-current-branch.yml/badge.svg)](https://github.com/TiyAgents/code-review-agent-action/actions/workflows/self-test-current-branch.yml)

# AI Code Review Agent Action

Reusable GitHub Action for automated Pull Request code review using `@openai/agents` (OpenAI Agents SDK).

This action:
- Runs on `pull_request` events.
- Reviews all changed files that match `include`/`exclude` filters.
- Uses planner + subagents (general/security/performance/testing) in multi-round batches for large diffs.
- Publishes:
  - one PR Review (`pulls.createReview`) with inline comments (`LEFT`/`RIGHT`), and
  - one updatable summary issue comment (marker-based, no spam).
- Tracks coverage and budget limits; outputs uncovered files + reasons when budget is exhausted.

## Agent Architecture

![Agent Architecture](docs/images/agent-architecture-cute-variant-b-16x9.png)

Simple flow explanation:
- `Planner` decides each round's batches under `max_rounds`, `max_model_calls`, and `max_files_per_batch`.
- `SubAgent(general)` always runs first for each batch, and can dynamically request extra dimensions (`security/performance/testing`).
- All sub-agent outputs are aggregated, normalized, deduplicated, then mapped to inline-commentable diff lines.
- The publisher writes one review + one updatable summary, with historical dedupe and best-effort outdated comment minimization.

## Features

- Full coverage target over filtered file set, including no-patch/binary files as file-level review entries.
- Structured schema output validation with one repair retry.
- Degradation mode: if structured output still fails after repair, posts summary-only with explicit reason.
- Duplicate suppression for same `head_sha` + same digest.
- Two-stage historical inline lifecycle control:
  - Stage 1: dedupe by `path + side + line + issue-key` across runs.
  - Stage 2: auto-minimize outdated historical inline comments (GraphQL best-effort).
- Confidence/evidence gating and semantic deduplication to reduce repeated/low-quality findings.
- Configurable review language via `review_language` (default `English`).
- Supports custom OpenAI base URL via `OPENAI_API_BASE` or `openai_api_base` input.
- Enforces `openai_api_base` safety: HTTPS only, no URL credentials, and hostname allowlist (default `api.openai.com`).
- Automatically loads project guidance from `AGENTS.md`, `AGENT.md`, or `CLAUDE.md` (priority order) and passes it to review agents.
- Tracing is automatically disabled when `OPENAI_API_BASE` is set (to avoid non-fatal tracing auth errors on custom gateways).
- General-first routing: batch review starts with `general`, and only `general` can dynamically request extra dimensions for that batch.
- Security note: when using `openai_api_base`, only point to trusted HTTPS gateways you control (prefer an allowlist); this endpoint receives review context payloads.

## Usage

```yaml
name: PR AI Review

on:
  pull_request:
    types: [opened, synchronize, reopened, ready_for_review]

permissions:
  contents: read
  pull-requests: write
  issues: write

jobs:
  ai-review:
    runs-on: ubuntu-latest
    steps:
      - name: AI Code Review
        uses: TiyAgents/code-review-agent-action@v1
        with:
          github_token: ${{ secrets.GITHUB_TOKEN }}
          openai_api_key: ${{ secrets.OPENAI_API_KEY }}
          openai_api_base: ${{ vars.OPENAI_API_BASE }}
          openai_api_base_allowlist: |
            api.openai.com
            your-gateway.example.com
          include: |
            **/*.js
            **/*.ts
            **/*.py
          exclude: |
            **/*.lock
            **/dist/**
            **/*.min.js
          planner_model: gpt-5.3-codex
          reviewer_model: gpt-5.3-codex
          review_dimensions: general,security,performance,testing
          review_language: English
          min_finding_confidence: 0.72
          coverage_first_round_primary_only: true
          auto_minimize_outdated_comments: true
          max_rounds: 8
          max_model_calls: 128 # example override (default: 40)
          max_files_per_batch: 8
          max_context_chars: 256000 # example override (default: 128000)
          max_findings: 60
          max_inline_comments: 30
```

## Inputs

| Name | Required | Default | Description |
| --- | --- | --- | --- |
| `github_token` | yes | - | GitHub token with review/comment write permissions |
| `openai_api_key` | no | env `OPENAI_API_KEY` | OpenAI API key |
| `openai_api_base` | no | env `OPENAI_API_BASE` | Optional custom OpenAI-compatible base URL |
| `openai_api_base_allowlist` | no | `api.openai.com` | Allowed hostnames for `openai_api_base` (HTTPS only) |
| `include` | no | `**` | Include globs (comma/newline separated) |
| `exclude` | no | empty | Exclude globs (comma/newline separated) |
| `planner_model` | no | `gpt-5.3-codex` | Planner model |
| `reviewer_model` | no | `gpt-5.3-codex` | Subagent model |
| `review_dimensions` | no | `general,security,performance,testing` | Subagent dimensions |
| `review_language` | no | `English` | Preferred language for review comments and summary |
| `min_finding_confidence` | no | `0.72` | Keep only findings at or above this confidence (0-1) |
| `coverage_first_round_primary_only` | no | `true` | Round 1 runs only primary dimension for faster file coverage |
| `auto_minimize_outdated_comments` | no | `true` | Best-effort GraphQL minimize for outdated historical inline comments from this action |
| `max_rounds` | no | `8` | Max planning/review rounds |
| `max_model_calls` | no | `40` | Hard cap for model calls |
| `max_files_per_batch` | no | `8` | Batch size cap |
| `max_context_chars` | no | `128000` | Per-batch context cap |
| `max_findings` | no | `60` | Max findings retained after dedupe/sort |
| `max_inline_comments` | no | `30` | Max inline comments posted |

## Budget Sizing (Rough Estimate)

This action spends model calls by **rounds × batches × dimensions**.

Approximation:

```text
calls ~= rounds * (1 + batches * dimensions)
batches ~= ceil(patch_files / max_files_per_batch)
```

- `1` is the planner call in each round.
- `dimensions` is from `review_dimensions` (default: 4).
- Cost scales more with **changed file count** than changed line count.
- With `coverage_first_round_primary_only=true` (default), round 1 often costs less than full dimensions.

Examples:
- If `patch_files=15`, `max_files_per_batch=8`, `dimensions=4`, one round is about `1 + 2*4 = 9` calls.
- If `patch_files=100`, `max_files_per_batch=8`, `dimensions=4`, one round is about `1 + 13*4 = 53` calls.

Practical guidance:
- For medium PRs (10-20 files), start with `max_model_calls: 30-50`.
- For large PRs (~100 files), start with `max_model_calls: 80-120`.
- If coverage is low, increase `max_model_calls` first, then `max_rounds`.
- To control cost, reduce `review_dimensions` (for example `general,security`).

## Outputs

| Name | Description |
| --- | --- |
| `covered_files` | Number of covered files in filtered target set |
| `target_files` | Number of files in filtered target set |
| `uncovered_files` | Number of uncovered files |
| `degraded` | `true` if summary-only degradation was triggered |

## Fork PR Notes

- For public fork PRs, repository secrets are typically unavailable on `pull_request`.
- If `OPENAI_API_KEY` is unavailable, this action cannot call the model.
- If you choose to run on `pull_request_target`, evaluate security risk carefully before using untrusted code context.

## Publishing

1. Push this repository to GitHub.
2. Tag a release, for example `v1.0.0`.
3. Consumers reference: `uses: TiyAgents/code-review-agent-action@v1`.

## Implementation Notes

- Trigger support: this action expects `pull_request` event payload.
- Inline comments use `path` + `side` + `line`, with fallback to summary-only file-level entries when mapping is invalid.
- Inline comments include a stable hidden issue key marker for cross-run dedupe and stale-thread minimization.
- Summary comment update uses marker metadata and deduplicates by `head_sha` + digest.
