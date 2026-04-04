---
title: QWED Protocol Verification
date: 2026-04-04 21:40:29 +00:00
tags:
  - QWED-AI
  - GitHub Actions
draft: false
repo: https://github.com/QWED-AI/qwed-verification
marketplace: https://github.com/marketplace/actions/qwed-protocol-verification
version: v5.0.0
dependentsNumber: "0"
actionType: Docker
---


Version updated for **https://github.com/QWED-AI/qwed-verification** to version **v5.0.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/qwed-protocol-verification) to find the latest changes.

## Action Summary

QWED Protocol is a GitHub Action designed to provide a model-agnostic verification framework for AI systems, focusing on validating outputs, processes, and tool interactions from any large language model (LLM) or AI agent. It helps detect and block unverified or potentially erroneous AI-generated content, preventing issues like hallucinations from impacting production. Key capabilities include multiple verification engines, agent security mechanisms, and process determinism, ensuring trust and reliability in AI-driven workflows.

## What's Changed

QWED v5.0.0 is a major hardening release focused on one goal: making the verification boundary fail-closed, deterministic about what it proves, and substantially harder to bypass under adversarial conditions.

This release includes 98 commits and 20 merged PRs since `v4.0.1`, including the full PR 0–5 enforcement series, additional security cleanup work, supply-chain hardening, and SemVer-aligned SDK/package version updates.

## Why v5.0.0
This is a major release because it includes intentional breaking changes to external behavior and integration expectations, including:
- agent verification now requires `ActionContext`
- agent security guards are server-enforced instead of client-optional
- `/metrics` and `/metrics/prometheus` now require privileged authenticated access
- natural-language math now exposes explicit trust-boundary semantics and returns `INCONCLUSIVE` instead of overstating verification
- `UNKNOWN`, `BLOCKED`, and `INCONCLUSIVE` are now first-class result states that downstream consumers must handle explicitly

## Highlights

### Fail-closed verification and execution
- Removed unsafe in-process execution fallbacks on protected paths
- Enforced secure Docker-only execution for sensitive stats and consensus verification flows
- Converted secure-runtime failures into explicit blocked states instead of silent degradation
- Prevented consensus from weakening requested assurance depth when secure execution is unavailable
- Hardened Redis-backed rate limiting to fail closed on backend errors

### Critical boundary closures
- Removed the logic verifier `eval()` fallback and now require `SafeEvaluator`
- Fixed consensus fact self-attestation behavior
- Added endpoint enforcement so blocked and secure-runtime failure states surface correctly
- Stopped leaking internal exception details in client-facing verification responses

### Runtime and agent hardening
- Made `ActionContext` mandatory for agent verification
- Added deterministic replay detection and repetitive-loop blocking
- Added in-flight step reservations to reduce concurrent replay races
- Ensured denied and budget-exceeded actions do not incorrectly consume conversation state
- Switched agent token verification to constant-time `hmac.compare_digest`
- Restricted `/metrics` and `/metrics/prometheus` to active privileged identities
- Enforced startup environment integrity checks before database initialization

### Determinism and trust-boundary alignment
- Natural-language math no longer presents LLM-mediated interpretation as formally verified user-query truth
- Added explicit `trust_boundary` metadata describing what was actually proven
- Changed symbolic identity numerical-sampling fallback to return `UNKNOWN` instead of over-claiming equivalence
- Marked heuristic outcomes honestly instead of presenting them as proof

### Tool governance and enforcement policy
- Added canonical enforcement guidance in `QWED_RULES.md`
- Added enforcement-oriented contributor/review guidance for automated tooling
- Strengthened PR/review policy around fail-open behavior, fallback execution, and mandatory verification boundaries

### Supply-chain and CI hardening
- Pinned third-party GitHub Actions revisions
- Merged supply-chain hardening and security autofix work
- Incorporated additional cleanup/security follow-ups across PRs #100–#114

## Security impact
This release closes the major adversarially-identified gaps across:
- unsafe fallback execution
- verification bypass opportunities
- fail-open runtime behavior
- replay and doom-loop agent behavior
- insecure metrics exposure
- misleading proof semantics for heuristic/LLM-mediated results

## Validation
Release readiness was validated through the merged hardening suites and final sanity sweep.

Sanity sweep result:
- `162 passed, 11 skipped, 0 failures`

The release gate confirmed:
- no observed MAJOR fail-open or unsafe-execution regressions
- fail-closed runtime behavior on protected paths
- active agent replay/loop protections
- deterministic trust-boundary semantics for heuristic and translated flows

## Upgrade notes

### Breaking changes
- `security_checks` is no longer a client-controlled opt-in boundary for agent verification behavior
- `verify_action()` integrations must provide `ActionContext` with `conversation_id` and `step_number`
- `/metrics` and `/metrics/prometheus` now require authenticated privileged access
- downstream consumers must explicitly handle `INCONCLUSIVE`, `UNKNOWN`, and `BLOCKED`

### Behavior changes
- natural-language math may return `INCONCLUSIVE` even when the translated expression evaluates deterministically
- heuristic symbolic identity checks now return `UNKNOWN` rather than implied equivalence
- secure-runtime failures block protected verification instead of degrading to weaker execution paths

## Version updates
- `qwed` (PyPI): `4.0.1` → `5.0.0`
- `qwed_sdk` (Python): `2.1.0-dev` → `5.0.0`
- `@qwed-ai/sdk` (NPM): `4.0.1` → `5.0.0`

## Included PRs since v4.0.1
- #100 `fix/snyk-hardcoded-secrets-170`
- #101 `feat/phase-24-a2a-resiliency`
- #103 `dependabot/npm_and_yarn/sdk-ts/...`
- #104 `security/supply-chain-hardening`
- #105 `alert-autofix-194`
- #106 `alert-autofix-264`
- #107 `alert-autofix-263`
- #108 `codex/pin-third-party-actions`
- #109 `codex/pin-third-party-actions`
- #110 `codex/pin-third-party-actions`
- #111 `rahul/unused-import-cleanup-2`
- #112 `rahul/unused-import-cleanup-3`
- #113 `rahul/unused-import-cleanup-4`
- #114 `rahul/security-cleanup-5`
- #115 `rahul/pr0-tool-governance`
- #116 `rahul/pr1-critical-boundary-closures`
- #117 `rahul/pr2-kill-unsafe-exec`
- #118 `rahul/pr3-single-enforcement-kernel`
- #119 `rahul/pr4-runtime-agent-hardening`
- #120 `rahul/pr5-determinism-alignment`

## Full Changelog
[Full Changelog: v4.0.1...v5.0.0](https://github.com/QWED-AI/qwed-verification/compare/v4.0.1...v5.0.0)

