---
title: NthLayer Reliability Check
date: 2026-03-17 05:51:58 +00:00
tags:
  - rsionnach
  - GitHub Actions
draft: false
repo: https://github.com/rsionnach/nthlayer
marketplace: https://github.com/marketplace/actions/nthlayer-reliability-check
version: v0.1.0a19
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/rsionnach/nthlayer** to version **v0.1.0a19**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/nthlayer-reliability-check) to find the latest changes.

## Action Summary

NthLayer is a reliability-focused GitHub Action that enables platform teams to define reliability requirements as code, validate SLOs against dependencies, and automate tasks like drift detection, deployment gating, and blast radius analysis. It helps teams proactively identify and address reliability issues, ensuring SLO feasibility, monitoring error budgets, and generating artifacts such as dashboards and alerts. By shifting reliability checks earlier in the development workflow, it reduces incidents and improves service resilience.

## Release notes

## What's New

### `nthlayer simulate` — Monte Carlo SLO Simulation

Predict the probability of meeting your SLA before you ship. Model dependency chains, run 10,000 simulated quarters, find your weakest link.

```bash
nthlayer simulate service.yaml --manifests-dir ./manifests/
```

**Key features:**
- Models failure timelines using exponential MTBF and lognormal MTTR distributions
- Cascades failures through dependency graphs (critical and non-critical)
- Produces P(meeting SLA), percentile distributions, error budget forecasts
- **What-if scenarios**: `redundant`, `improve`, `remove`, `degrade` — explore architectural changes before implementing them
- JSON output for CI/CD integration with `--min-p-sla` gate
- Pure transport (ZFC) — no model calls, no API costs

### Also included

- **Configurable alert `for` duration** — per-severity override for Prometheus alert `for` durations
- **Error budget policy DSL** — declarative `on_exhausted` behaviors (`freeze_deploys`, `require_approval`, `notify`)

### Stats

- 46 new tests, 3,844 total passing
- 11 new files, 2 modified
- Full [documentation](https://rsionnach.github.io/nthlayer/commands/simulate/)

**Full Changelog**: https://github.com/rsionnach/nthlayer/compare/v0.1.0a18...v0.1.0a19
