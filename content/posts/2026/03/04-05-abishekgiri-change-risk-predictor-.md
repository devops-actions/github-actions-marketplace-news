---
title: ReleaseGate Change Risk Analyzer
date: 2026-03-04 05:43:47 +00:00
tags:
  - abishekgiri
  - GitHub Actions
draft: false
repo: https://github.com/abishekgiri/change-risk-predictor-
marketplace: https://github.com/marketplace/actions/releasegate-change-risk-analyzer
version: v0.18.2-governance-control-plane
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/abishekgiri/change-risk-predictor-** to version **v0.18.2-governance-control-plane**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/releasegate-change-risk-analyzer) to find the latest changes.

## Action Summary

ReleaseGate is a Jira-integrated governance tool that enforces risk-aware, policy-driven controls on workflow transitions and release decisions. It blocks non-compliant releases, ensures structured approvals, prevents override abuse, and generates cryptographically verifiable audit artifacts for compliance purposes. By serving as a deterministic enforcement gate, it provides robust workflow governance, tamper-evident audit trails, and replayable decision records for secure and compliant software delivery.

## Release notes

## Phase 18 — Governance Control Plane

This release completes the Governance Dashboard product surface.

### Includes
- Executive Governance Overview
- Integrity & Drift Trends
- Override Abuse Index + Alerts
- Decision Explorer (hash-bound, replayable)
- Policy Diff with Severity + Summary
- Cursor Pagination
- Trace IDs + Read Audit Logging
- Nightly Rollup Automation
- Dashboard UI (Next.js 16)

### Stability
- Deterministic dependency pinning
- Timestamp regression coverage
- Playwright happy-path E2E
- Enterprise-ready caching + audit logging

Tag: v0.18.2-governance-control-plane
