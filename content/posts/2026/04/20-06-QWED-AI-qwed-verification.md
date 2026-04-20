---
title: QWED Protocol Verification
date: 2026-04-20 06:25:49 +00:00
tags:
  - QWED-AI
  - GitHub Actions
draft: false
repo: https://github.com/QWED-AI/qwed-verification
marketplace: https://github.com/marketplace/actions/qwed-protocol-verification
version: v5.1.0
dependentsNumber: "0"
actionType: Docker
---


Version updated for **https://github.com/QWED-AI/qwed-verification** to version **v5.1.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/qwed-protocol-verification) to find the latest changes.

## Action Summary

QWED Protocol is a model-agnostic GitHub Action designed to verify the outputs, processes, and tool interactions of AI systems, including large language models (LLMs) and AI agents, before they are deployed to production. It prevents issues like hallucinations and inaccurate results by using multiple verification engines to ensure data trustworthiness and process determinism. This solution enhances reliability and security for AI-driven systems, enabling organizations to confidently use any LLM while mitigating risks associated with unverified outputs.

## What's Changed

QWED v5.1.0 extends the verification boundary beyond actions and into deterministic state governance.

This release introduces `AgentStateGuard` and ships a focused hardening wave that closes the post-v5.0.0 fail-open paths identified during adversarial review. The result is a stricter system that is more explicit about what it proves, harder to bypass under uncertainty, and safer under agentic workflows.

## Why v5.1.0

This is a minor release because it adds a meaningful new capability while also tightening existing behavior across multiple trust boundaries.

Highlights:
- new deterministic state governance via `AgentStateGuard`
- fail-closed hardening across execution, tool approval, math verification, API semantics, and schema validation
- clearer upgrade path for users who were still relying on legacy or ambiguous behaviors

## Headline Feature: AgentStateGuard

`AgentStateGuard` expands QWED from action verification toward state and memory governance.

It adds:
- strict structural validation for agent state payloads
- semantic transition checks between current and proposed state
- replay-resistant, monotonic transition enforcement
- governed atomic commit behavior for approved state writes

This means agent state is no longer just “well-formed”; it can now be deterministically checked before becoming reality.

## Additional Hardening

### Execution and tool governance
- `CodeExecutor` is now permanently hard-blocked as a legacy execution path
- unknown tools are now denied by default instead of being auto-approved at low heuristic risk

### Math and API semantics
- `verify_math()` now enforces deterministic tolerance bounds
- ambiguous `/verify/math` expressions now fail closed with `BLOCKED`
- `verify_identity()` now rejects sampling-only agreement when no formal proof exists
- `verify_logic_rule()` now fails explicitly instead of returning an ambiguous `None`

### Schema enforcement
- `SchemaVerifier` now fails closed when `uniqueItems` cannot be verified deterministically

### Agent/runtime follow-through
- progress-aware doom loop protection (`LOOP-004`)
- continued infrastructure and config hardening
- additional stats engine edge-case coverage
- CodeQL and cleanup follow-up work

## Upgrade Notes

Review these changes before upgrading:

- `CodeExecutor` can no longer be used. Migrate direct imports to `SecureCodeExecutor`.
- unknown tools now require explicit allowlisting
- `verify_math()` may return `BLOCKED` for oversized or invalid tolerances
- `verify_logic_rule()` now raises instead of returning `None`
- `verify_identity()` sampling-only matches now return `BLOCKED`, not `UNKNOWN`
- ambiguous `/verify/math` inputs now return `BLOCKED` with `is_valid: false`
- `uniqueItems` verification failures now produce explicit schema errors instead of silent passes

## Included Pull Requests Since v5.0.0

- `#124` feat(agent): add progress-aware doom loop guard (LOOP-004)
- `#126` security: harden configs, CI, and infrastructure — full audit fixes
- `#127` test(stats): add edge case coverage for statistics engine
- `#136` fix(codeql): resolve remaining syntax and test cleanup alerts
- `#137` Update contributors section in README
- `#139` feat: AgentStateGuard – full implementation (structural + semantic + atomic commit)
- `#149` fix: hard-block legacy CodeExecutor execution path
- `#150` fix: default deny unknown tool approvals
- `#151` fix: bound verify_math tolerance by computed magnitude
- `#152` fix: fail closed in verify_logic_rule
- `#153` fix: fail closed in verify_identity
- `#154` fix: fail closed for ambiguous math api inputs
- `#155` fix: fail closed on uniqueItems validation errors

## Version Updates

- `qwed` (PyPI): `5.0.0` → `5.1.0`
- `qwed_sdk` (Python): `5.0.0` → `5.1.0`
- `@qwed-ai/sdk` (NPM): `5.0.0` → `5.1.0`

Full Changelog:
`v5.0.0...v5.1.0`
