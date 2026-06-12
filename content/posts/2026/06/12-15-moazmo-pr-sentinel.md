---
title: PR Sentinel Multi-Agent Reviewer
date: 2026-06-12 15:23:34 +00:00
tags:
  - moazmo
  - GitHub Actions
draft: false
repo: https://github.com/moazmo/pr-sentinel
marketplace: https://github.com/marketplace/actions/pr-sentinel-multi-agent-reviewer
version: v2.1.0
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/moazmo/pr-sentinel** to version **v2.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pr-sentinel-multi-agent-reviewer) to find the latest changes.

## What's Changed

v2.1 turns an accurate reviewer into one teams adopt and keep — every feature $0 because you bring the key. Built after a full file-by-file self-review.

## New — features teams adopt for
- **One-click fixes** — precise fixes render as GitHub `suggestion` blocks (commit with one click).
- **Merge gating** — `gate.level` posts a Check Run that fails on unresolved High/Critical findings; make it a required check to block risky merges. Off by default.
- **Incremental review** — re-reviews only the files changed since the last push; no more re-flagging settled code.
- **Finding suppression** — `review.suppress` globs and inline `pr-sentinel: ignore[category]` markers.
- **Custom guidance** — `agents.guidance` / `agents.instructions` (read from the base branch, so a PR cannot inject).
- **Presets** — `mode: fast | balanced | thorough`.
- **Risk labels**, **REQUEST_CHANGES**, **merge-readiness score (0–100)**, **confidence display** (ensemble agreement).
- **Adaptive sampling** — one sample on clean code, the full vote only where something was found (~40% fewer calls).
- **Cross-file pass** (opt-in) — catches stale callers / signature mismatches per-file review misses.

## Fixed (from the self-review)
- Pooled GitHub client + retry/backoff; parallel context fetch; robust >65k-char comment cap; reviewer attribution recovery; precise test-path detection.

## Hardening / health
- Digest-pinned base image, Dependabot, issue/PR templates, CODE_OF_CONDUCT, CHANGELOG, self-review (dogfood) workflow.

200 tests (LLM + GitHub mocked). Live-verified end-to-end: gating, labels, readiness score, and inline comments on a real PR. Install: `uses: moazmo/pr-sentinel@v2`. Optional features need one extra permission each (gating: `checks: write`, labels: `issues: write`).
