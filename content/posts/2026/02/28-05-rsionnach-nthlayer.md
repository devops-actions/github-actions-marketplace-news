---
title: NthLayer Reliability Check
date: 2026-02-28 05:35:55 +00:00
tags:
  - rsionnach
  - GitHub Actions
draft: false
repo: https://github.com/rsionnach/nthlayer
marketplace: https://github.com/marketplace/actions/nthlayer-reliability-check
version: v0.1.0a17
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/rsionnach/nthlayer** to version **v0.1.0a17**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/nthlayer-reliability-check) to find the latest changes.

## Action Summary

NthLayer is a GitHub Action designed to help platform teams proactively manage and improve service reliability by shifting reliability practices earlier in the development lifecycle. It automates tasks such as detecting SLO violations, predicting error budget exhaustion, validating feasibility of SLOs based on dependency chains, and gating deployments based on real-time reliability data. Key features include drift detection, dependency-aware SLO validation, deployment gating, blast radius analysis, metric recommendations, and automated generation of reliability artifacts like dashboards, alerts, and SLO configurations.

## Release notes

## v0.1.0a17 (February 27, 2026)

### Orchestrator Refactor

- **Phased orchestration package** (`orchestration/`) — split monolithic `ServiceOrchestrator` into modular components
  - `ResourceHandler` protocol and `ResourceRegistry` for pluggable resource types
  - `ExecutionEngine` for running generation loops with `ResultCollector` aggregation
  - `PlanBuilder` for previewing generation plans before execution
  - `ServiceOrchestrator` retained as backward-compatible facade

### Desloppify Code Quality Sweep

- **29 findings resolved** — structured logging enforcement, dead code removal, test coverage gaps
- Migrated `mock_server.py` to `tests/fixtures/`, added `conftest.py` for shared test config
- New `test_critical_models.py` and `test_verification.py` test suites
- Cleaned up demo files, renamed ad-hoc scripts to `try_` prefix
- Removed duplicate `cli/formatters/models.py`, consolidated SARIF formatter

### Deployment Detection

- **Provider-agnostic webhook handling** via `BaseDeploymentProvider` ABC
- ArgoCD, GitHub Actions, and GitLab CI/CD webhook parsers
- `DeploymentProviderRegistry` for self-registering providers
- HMAC SHA256 signature verification per provider

### Policy Audit Logging

- **Immutable audit trail** for deployment gate decisions
- Domain models: `PolicyEvaluation`, `PolicyViolation`, `PolicyOverride`
- REST API: `POST /policies/{service}/override`, `GET /policies/{service}/audit`

### Also included

- Harness engineering infrastructure
- Backstage plugin for reliability data integration
- Grafana dashboard links in alert annotations
- 10 audit findings resolved
- Lazy AWS imports for CI environments
- MkDocs GitHub Pages workflow

Full changelog: https://github.com/rsionnach/nthlayer/blob/main/CHANGELOG.md
