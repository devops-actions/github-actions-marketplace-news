---
title: Bernstein — Multi-Agent Orchestration
date: 2026-05-17 14:04:49 +00:00
tags:
  - sipyourdrink-ltd
  - GitHub Actions
draft: false
repo: https://github.com/sipyourdrink-ltd/bernstein
marketplace: https://github.com/marketplace/actions/bernstein-multi-agent-orchestration
version: v2.0.1
dependentsNumber: "5"
actionType: Composite
---


Version updated for **https://github.com/sipyourdrink-ltd/bernstein** to version **v2.0.1**.

- This action is used across all versions by **5** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/bernstein-multi-agent-orchestration) to find the latest changes.

## Action Summary

Bernstein is a deterministic Python-based scheduler designed to orchestrate and manage multiple CLI coding agents in parallel, ensuring compliance and traceability through HMAC-signed audit chains, signed agent cards, and per-artifact lineage tracking. It automates the secure execution of tasks across 44 supported CLI agents, providing tamper-evident logs, authentication, and evidence generation to meet regulatory and compliance requirements. This action is ideal for teams needing robust multi-agent task orchestration with a focus on security and accountability.

## What's Changed

A patch on top of [v2.0.0](https://github.com/sipyourdrink-ltd/bernstein/releases/tag/v2.0.0) — that's the actual web-UI release; v2.0.1 is the first cut that survived CI and made it to PyPI.

## Why 2.0.1 and not 2.0.0 on PyPI

Three contract tests broke during the v2 UI integration: a route-parity check noticed the new `/ui` mounts; a CLI-callback signature drift caught the freshly-added `idle` flag; the README-coverage test wanted the new `gui` command in its allow-list. None of those were product bugs — they were guardrails firing exactly as intended on a big merge. While they were red, the auto-release pipeline correctly refused to ship.

By the time main came back green a few hours later, the version had already moved to 2.0.1. v2.0.0 is now a historical marker tag — pip / pipx / uv all install 2.0.1 by default. All the v2.0.0 functionality is in this release; the [v2.0.0 release notes](https://github.com/sipyourdrink-ltd/bernstein/releases/tag/v2.0.0) describe what shipped (screenshots and all).

## What got fixed along the way

- The `/ui` mount + `/gui-meta` route now satisfy both directions of the API-versioning parity check ([#1272](https://github.com/sipyourdrink-ltd/bernstein/pull/1272), [#1279](https://github.com/sipyourdrink-ltd/bernstein/pull/1279)).
- The Tasks-page drawer stopped re-popping after Esc / X / click-outside ([#1269](https://github.com/sipyourdrink-ltd/bernstein/pull/1269)).

## CI hardening (the bigger half of this release)

Right after the v2 cut shipped, an investigation surfaced a quieter problem: auto-release had been silently skipping for hours because the v2 commit's CI was *cancelled* by concurrency-cancel-in-progress, and the alert filter only listened for `failure`, not `cancelled`. We took that as a signal that the safety net had a hole and spent the rest of the day patching it.

A summary of what landed:

- **Aggregator gate-job** ([#1276](https://github.com/sipyourdrink-ltd/bernstein/pull/1276)). One required status check that fails on any non-success result — including `cancelled`, `timed_out`, `action_required` — instead of relying on individual matrix-job names that drift.
- **Silent-skip alerts** ([#1274](https://github.com/sipyourdrink-ltd/bernstein/pull/1274), [#1307](https://github.com/sipyourdrink-ltd/bernstein/pull/1307)). Telegram fires on anything that isn't `success`; auto-release opens (or updates, deduplicated by commit SHA) a tracking issue when it has to skip; a daily reconciliation cron compares `pyproject.toml` against PyPI.
- **Concurrency split** ([#1277](https://github.com/sipyourdrink-ltd/bernstein/pull/1277)). PRs still cancel previous runs on new pushes — but pushes to main *queue* instead of cancelling, so the release pipeline always sees a real conclusion.
- **Conditional allowed-skips** ([#1287](https://github.com/sipyourdrink-ltd/bernstein/pull/1287)). A `skipped` result only passes the gate when an upstream planner job said the skip was intentional. Concurrency-cancellations or unexpected `skipped` flips still fail.
- **Contract-drift auto-fix bot** ([#1278](https://github.com/sipyourdrink-ltd/bernstein/pull/1278)). When one of the three contract tests above flags drift on a PR, a bot proposes the fix (DOCUMENTED_COMMANDS / _INFRASTRUCTURE_PATHS / cli forward-arg) as a sibling PR.
- **Adapter contract drift detection** ([#1293](https://github.com/sipyourdrink-ltd/bernstein/pull/1293)). Same idea but for the *external* CLIs the orchestrator drives. 15 adapters (claude, gemini, codex, aider, opencode, aichat, crush, amp, continue_dev, plandex, goose, q_dev, gptme, forge, qwen) get their `--help` capability-asserted three times a day; when upstream renames a flag we depend on, CI goes red within hours.
- **Supply-chain coverage** ([#1284](https://github.com/sipyourdrink-ltd/bernstein/pull/1284)). OSSF Scorecard, SBOM on every release, `actions/dependency-review` on PRs, `trufflesecurity/trufflehog` secret-scan, Dependabot extended to the github-actions ecosystem.
- **Workflow security pass** ([#1296](https://github.com/sipyourdrink-ltd/bernstein/pull/1296), [#1299](https://github.com/sipyourdrink-ltd/bernstein/pull/1299), [#1300](https://github.com/sipyourdrink-ltd/bernstein/pull/1300), [#1308](https://github.com/sipyourdrink-ltd/bernstein/pull/1308)). 163 zizmor findings resolved across `unpinned-uses`, `artipacked` (`persist-credentials: false` on read-only checkouts), `template-injection`, `bot-conditions`, `dangerous-triggers`, `ref-version-mismatch`, `cache-poisoning`, `excessive-permissions`, `dependabot-cooldown`. The three jobs that legitimately push back to git keep their credentials with an annotated rationale.
- **`step-security/harden-runner` audit mode** ([#1285](https://github.com/sipyourdrink-ltd/bernstein/pull/1285)) on every workflow job — egress visibility before flipping to `block`.
- **pre-commit.ci + nightly fanout** ([#1275](https://github.com/sipyourdrink-ltd/bernstein/pull/1275)). Auto-fix lint / format on PR, and the nightly compliance / regression workflows (nightly-deep-tests, eval-nightly, SOC2 evidence, pentest) now route their failures through Telegram instead of dying silently.

## Distribution

The release made it to:

- **PyPI** — `pip install bernstein` ➜ `2.0.1`
- **npm** — `bernstein-orchestrator@2.0.1`
- **GitHub Container Registry** — `ghcr.io/sipyourdrink-ltd/bernstein:2.0.1` (the publish workflow had been deleted in April; [#1298](https://github.com/sipyourdrink-ltd/bernstein/pull/1298) restored it)

Homebrew tap and the COPR / RPM channel both had pre-existing breakage that this release exposed; [#1297](https://github.com/sipyourdrink-ltd/bernstein/pull/1297) documents the Homebrew fix (needs a one-time PAT) and [#1309](https://github.com/sipyourdrink-ltd/bernstein/pull/1309) retires the COPR channel — `pipx install bernstein` works natively on Fedora 41/42 anyway.

## Operator playbook

[`docs/maintainers/ci-apps.md`](https://github.com/sipyourdrink-ltd/bernstein/blob/main/docs/maintainers/ci-apps.md) ([#1283](https://github.com/sipyourdrink-ltd/bernstein/pull/1283)) collects the one-time installs surfaced by this work — CodeRabbit, Gemini Code Assist, PyPI Trusted Publishing, GitHub merge queue, StepSecurity, Homebrew PAT. Each is free for OSS and needs at most a few minutes.

## Upgrade

```
pip install --upgrade bernstein
bernstein gui serve
```

v1.10.x configs and plans run unchanged. The CLI / TUI surface is the same.

## Tracking

- Web UI contributor playbook: [#1262](https://github.com/sipyourdrink-ltd/bernstein/issues/1262)
- CI hardening rollout: [#1273](https://github.com/sipyourdrink-ltd/bernstein/issues/1273)
- Adapter contract drift: [#1291](https://github.com/sipyourdrink-ltd/bernstein/issues/1291)

