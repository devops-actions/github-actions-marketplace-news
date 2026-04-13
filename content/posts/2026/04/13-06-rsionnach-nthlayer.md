---
title: NthLayer Reliability Check
date: 2026-04-13 06:27:26 +00:00
tags:
  - rsionnach
  - GitHub Actions
draft: false
repo: https://github.com/rsionnach/nthlayer
marketplace: https://github.com/marketplace/actions/nthlayer-reliability-check
version: v0.1.0a20
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/rsionnach/nthlayer** to version **v0.1.0a20**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/nthlayer-reliability-check) to find the latest changes.

## Action Summary

NthLayer is a pure compiler for automating the generation and validation of reliability infrastructure, including dashboards, alerts, SLOs, and documentation, from a single manifest file. It addresses the challenges of late-stage reliability decisions, inconsistent metrics, and unvalidated targets by providing tools for dependency-aware SLO validation, metric recommendations, Monte Carlo simulations, and policy enforcement. By streamlining and standardizing reliability practices, NthLayer helps teams ensure their systems meet defined reliability goals and are production-ready.

## What's Changed

## What's New

### On-Call Schedule Schema (opensrm-0rg)
- `spec.ownership.oncall` block: rotation, roster, overrides, escalation policy
- 5 new dataclasses: `RosterMember`, `Override`, `ManifestEscalationStep`, `RotationConfig`, `OnCallConfig`
- Parser expands `spec.slos.judgment` block into flat `SLODefinition` objects with `slo_type="judgment"`
- Timezone validation at parse time (`OpenSRMParseError` for invalid IANA timezones)

### Pure Compiler (Purify Generate Epic — Complete)
NthLayer is now a **pure deterministic compiler**: specs → artifacts. All runtime infrastructure has been removed.

**What was removed:**
- FastAPI server (`api/`)
- SQLAlchemy database layer (`db/`, alembic)
- Deployment webhook providers (`deployments/`)
- Runtime policy evaluation (`policies/evaluator.py`, `conditions.py`, `audit.py`)
- SLO runtime collectors, gates, correlator (`slos/collector.py`, `gates.py`, `correlator.py`)
- Runtime dependencies: fastapi, uvicorn, sqlalchemy, alembic, redis, aws-xray-sdk, PyJWT

**Where it moved:**

| Capability | Old Location | New Location |
|-----------|-------------|-------------|
| SLO collection & budget tracking | `nthlayer slos/collector.py` | `nthlayer-observe collect` |
| Drift detection | `nthlayer drift/` | `nthlayer-observe drift` |
| Metric verification | `nthlayer verification/` | `nthlayer-observe verify` |
| Deployment gates | `nthlayer cli/deploy.py` | `nthlayer-observe check-deploy` |
| Budget explanations | `nthlayer slos/explanations.py` | `nthlayer-observe explain` |
| Policy evaluation (runtime) | `nthlayer policies/evaluator.py` | `nthlayer-observe` |
| Portfolio & scorecard | `nthlayer portfolio/, scorecard/` | `nthlayer-observe portfolio, scorecard` |
| Dependency discovery | Stays in nthlayer (used by dashboard generation) | — |

**If you were using any of these runtime commands**, install [nthlayer-observe](https://github.com/rsionnach/nthlayer-observe) (`pip install nthlayer-observe`).

### Housekeeping
- `.beads/` archived and gitignored (task tracking centralized in opensrm Dolt DB)
- Spec documents (`*SPEC*.md`) gitignored from public repos
- Root-level spec files removed from tracking
- `nthlayer-common>=0.1.5` pinned

## Install
```bash
pip install nthlayer==0.1.0a20
```
