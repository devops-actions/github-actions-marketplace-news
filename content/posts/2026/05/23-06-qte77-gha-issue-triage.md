---
title: AI Issue Triage
date: 2026-05-23 06:14:28 +00:00
tags:
  - qte77
  - GitHub Actions
draft: false
repo: https://github.com/qte77/gha-issue-triage
marketplace: https://github.com/marketplace/actions/ai-issue-triage
version: v0.3.0
dependentsNumber: "6"
actionType: Composite
---


Version updated for **https://github.com/qte77/gha-issue-triage** to version **v0.3.0**.

- This action is used across all versions by **6** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-issue-triage) to find the latest changes.

## Action Summary

The **gha-issue-triage** GitHub Action automates the issue triage process using AI-powered features, including duplicate detection, relevance scoring, feasibility analysis, and auto-labeling. It identifies duplicate issues, evaluates their relevance and complexity, applies appropriate labels, and posts a consolidated sticky summary comment with its analysis for each issue. This helps maintainers streamline issue management by reducing manual effort and improving organization and prioritization of tasks.

## What's Changed

## Highlights

- **Error-handling boundary** — when the action hits an auth/API failure (missing `permissions: models: read`, expired PAT, fork-PR read-only token, rate limit, upstream 5xx, network error) it now posts a `### Triage failure` sticky comment to the triggering issue with a concrete fix, and the workflow stays red. See [`docs/integrations.md#troubleshooting`](https://github.com/qte77/gha-issue-triage/blob/v0.3.0/docs/integrations.md#troubleshooting) for the per-class table. (#83, #84, #85)
- **Label rename — aligns with GitHub defaults**:
  - `good-first-issue` → `good first issue`
  - `needs-discussion` → `needs discussion`
  - new `documentation` label added to the bot's vocabulary

  Legacy hyphenated spellings auto-removed from issues on next triage via `DEPRECATED_LABELS` reconciliation — no manual cleanup needed. (#79, closes #71, #63)
- **`apps/claude` recommendation removed** from `docs/integrations.md` — over-privileged + misleading attribution. Full rationale in [#68](https://github.com/qte77/gha-issue-triage/issues/68) and [`qte77/ai-agents-research#163`](https://github.com/qte77/ai-agents-research/issues/163). (#78)
- **Quieter consumer logs** — `setup-uv` `cache-dependency-glob` pinned to action's own `uv.lock` instead of the consumer repo (silences the misleading "No file matched … cache will never get invalidated" warning). (#81, closes #65)

## What's also in this release

- `docs/architecture.md` — boundary failure-policy table (fail-loud / wrap-degrade / wrap-comment-fail-loud) per `py-harden-ruff.md` section 5. (#83)
- `AGENTS.md` — concise governance file for AI agents contributing to this repo.
- `.github/dependabot.yaml` + `.github/workflows/codeql.yml`. (#73)
- Injection-safety comment in `action.yaml`. (#77)
- Ruff `select` expanded (baseline + quality + TRY rule sets; strictness deferred to #62). (#82)
- Live Dependabot status badge in README. (#72)
- All workflow `uses:` SHA-pinned per repo strict-pin policy. (#60)

## Migration notes

- Caller workflows: no breaking changes; existing usage continues to work.
- Label set: if your repo had the old hyphenated `good-first-issue` or `needs-discussion` labels applied by this action, they will be removed from issues on next triage. The new spaced spellings will be created if absent.
- README Usage example updated to `qte77/gha-issue-triage@v0.3.0`. For strict-pin orgs, pin to this commit SHA: `4a07dd23bdd6bafc625bce6430f0aa5990fc327d`.

Full changelog: [`CHANGELOG.md`](https://github.com/qte77/gha-issue-triage/blob/v0.3.0/CHANGELOG.md#030---2026-05-22).
