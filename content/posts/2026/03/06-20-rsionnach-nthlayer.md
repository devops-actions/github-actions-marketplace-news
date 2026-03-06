---
title: NthLayer Reliability Check
date: 2026-03-06 20:57:32 +00:00
tags:
  - rsionnach
  - GitHub Actions
draft: false
repo: https://github.com/rsionnach/nthlayer
marketplace: https://github.com/marketplace/actions/nthlayer-reliability-check
version: v0.1.0a18
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/rsionnach/nthlayer** to version **v0.1.0a18**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/nthlayer-reliability-check) to find the latest changes.

## Action Summary

NthLayer is a reliability-focused GitHub Action designed for platform teams to shift reliability efforts earlier in the development lifecycle. It automates tasks such as validating Service Level Objectives (SLOs) against dependencies, detecting drift in error budgets, enforcing deployment gates based on real-time data, and generating reliability artifacts like dashboards and alerts from service specifications. By integrating reliability checks into CI/CD pipelines, it helps teams proactively address potential issues and ensures that reliability targets are achievable and aligned with system dependencies.

## Release notes

## v0.1.0a18 — Build-Time Policy Engine

### Highlights

- **Policy engine core** — evaluate org-wide and per-service policies against service specs at build time
  - `nthlayer validate --policies policies.yaml` CLI integration
  - Required fields, tier constraints, and dependency rules
  - SARIF output (NTHLAYER009-011) for GitHub Code Scanning
- **Quality promotions** — no D/F-grade packages remain; 150+ new tests
- **Topology export** — JSON, Mermaid, and DOT output formats
- **Enhanced deploy correlation** — 5-factor weighted scoring
- **Service documentation generation** — README, ADR, API docs from manifests
- **CLI smoke test harness** — subprocess-level functional tests with pre-push hook

Full changelog: https://github.com/rsionnach/nthlayer/blob/main/CHANGELOG.md
