---
title: EcoTrace Carbon Gate
date: 2026-07-31 22:09:59 +00:00
tags:
  - Zwony
  - GitHub Actions
draft: false
repo: https://github.com/Zwony/ecotrace
marketplace: https://github.com/marketplace/actions/ecotrace-carbon-gate
version: core-v1.5.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  **EcoTrace is a lightweight Python library that measures the carbon footprint of applications in real-time, providing granular monitoring capabilities. It simplifies the process of tracking energy and emissions by eliminating the need for configuration files or background services. The latest version (v1.5.0) introduces integration with hosted cloud observatories, enhanced support for various CPU models, and WebSocket live streaming for real-time insights.**
---


Version updated for **https://github.com/Zwony/ecotrace** to version **core-v1.5.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ecotrace-carbon-gate) to find the latest changes.

## Action Summary

**EcoTrace is a lightweight Python library that measures the carbon footprint of applications in real-time, providing granular monitoring capabilities. It simplifies the process of tracking energy and emissions by eliminating the need for configuration files or background services. The latest version (v1.5.0) introduces integration with hosted cloud observatories, enhanced support for various CPU models, and WebSocket live streaming for real-time insights.**

## What's Changed

# v1.5.0 

EcoTrace **v1.5.0** marks a major evolution from a local instrumentation engine into a fully cloud-connected carbon observability platform, paired with a massive hardware database expansion and Python 3.14+ readiness.

---

## What's New in v1.5.0

### 1. `CloudExporter` & Native `EcoTrace(api_key="eco_usr_...")`
Stream high-precision carbon metrics directly to your private EcoTrace Hosted Web Dashboard with zero configuration.

```python
from ecotrace import EcoTrace

# Passes telemetry to your hosted account at https://ecotracelibrary.com
eco = EcoTrace(api_key="eco_usr_abc123...")
```

Or attach explicitly as a standalone exporter:
```python
from ecotrace.exporters import CloudExporter

eco.add_exporter(CloudExporter(api_key="eco_usr_abc123..."))
```

### 2. Terminal Credential Management (`ecotrace login`)
Authenticate your terminal once to stream all headless profiling runs directly to your web dashboard:

```bash
$ ecotrace login --key eco_usr_abc123...
[SUCCESS] Saved EcoTrace cloud credentials to: ~/.ecotrace/config.json
  Ingestion Key   : eco_usr_abc...123
  Ingest Endpoint : https://ecotracelibrary.com/api/metrics/ingest

All subsequent 'ecotrace run' calls will automatically stream to your web dashboard!
```

Check connection status or log out at any time:
```bash
$ ecotrace status
$ ecotrace logout
```

### 3. Web Backend Real-Time & Session Filtering Engine
- **WebSocket Channel (`/api/ws/live`)**: Real-time metric streaming directly into the web dashboard without polling latency.
- **Run History Endpoint (`/api/metrics/runs`)**: Enables filtering metrics by specific execution runs on the web dashboard.
- **Isolated Write-Only Ingestion (`X-EcoTrace-Key`)**: Ingestion keys allow write-only metric submission; Dashboard UI remains protected behind JWT authentication.

### 4.  6,980+ CPU TDP Database Expansion (100% Verified TDP Ratings)
- **Expanded Coverage**: CPU dataset expanded from 1,806 to **6,983 unique, deduplicated CPU models**.
- **Mobile & Laptop CPUs**: Laptop CPU coverage increased by +760% (1,520+ mobile models: Intel 10th-14th Gen H/U/P/HX, Core Ultra, AMD Ryzen 3000-8000 mobile series, and Apple Silicon M1-M4).
- **100% Valid TDP Ratings**: Eliminated all empty/zero TDP entries. 100% of rows contain verified float TDP ratings sourced directly from Intel ARK, AMD Official Specs, PassMark, and Apple Silicon benchmarks.
- **Dual-Socket Matching Fix**: Stripped `[Dual CPU]` prefixes to allow 100% direct string resolution for multi-socket server processors.

### 5.  Extended Python Version Compatibility (`Python 3.8 → 3.14+`)
- Extended Python runtime compatibility from `Python 3.9-3.12` to **`Python 3.8 → 3.14+`** across `pyproject.toml`, package classifiers, documentation, marketplace manifests, and landing page metrics.

---

##  Verification & Stability
- All **86 unit tests** passed cleanly.
- PEP 8 formatting and Pyright type checker compliance verified across all files.

