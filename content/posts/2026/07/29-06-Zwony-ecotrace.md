---
title: EcoTrace Carbon Gate
date: 2026-07-29 06:29:55 +00:00
tags:
  - Zwony
  - GitHub Actions
draft: false
repo: https://github.com/Zwony/ecotrace
marketplace: https://github.com/marketplace/actions/ecotrace-carbon-gate
version: core-v1.4.3
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  EcoTrace is a Python library that provides real-time, granular carbon footprint measurement for Python applications. It allows users to monitor and compare the environmental impact of their code execution without modifying existing code. Key features include pausing tracking, side-by-side run comparisons, webhook integration, filtered CSV exporting, log maintenance commands, and programmatic access to session metrics.
---


Version updated for **https://github.com/Zwony/ecotrace** to version **core-v1.4.3**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ecotrace-carbon-gate) to find the latest changes.

## Action Summary

EcoTrace is a Python library that provides real-time, granular carbon footprint measurement for Python applications. It allows users to monitor and compare the environmental impact of their code execution without modifying existing code. Key features include pausing tracking, side-by-side run comparisons, webhook integration, filtered CSV exporting, log maintenance commands, and programmatic access to session metrics.

## What's Changed

# Release Notes — v1.4.3

**Release Date:** July 28, 2026  
**Tag:** `v1.4.3`  
**PyPI Package Version:** `1.4.3`  

---

##  Overview

EcoTrace **v1.4.3** is a critical accuracy and maintenance patch that resolves a long-standing CPU TDP resolution path bug, drastically improves x86 processor hardware matching precision, and cleans up legacy repository footprint.

---

##  Key Improvements & Fixes in v1.4.3

### 1. CPU TDP Database Path Fix (`core.py`)
- **Resolved Path Mismatch**: Previously, `core.py` targeted a non-existent sub-path (`boaviztapi/data/crowdsourcing/cpu_specs.csv`), which caused `load_tdp_database()` to return an empty dictionary and fall back to generic 65.0W for x86 CPUs.
- **Direct Dataset Integration**: Redirected to `ecotrace/cpu_data.csv` containing **1,806 CPU models** (1,014 with direct TDP ratings).

### 2. Enhanced CPU Matching Algorithm (`cpu.py`)
- **Noise Word Stripping**: Strips `cpu` and `processor` artifacts returned by `py-cpuinfo`.
- **Bidirectional Match & Length Priority**: Sorts TDP keys by length descending to match exact processor SKU variants (e.g. `i7-10700K`, `EPYC 7B12`, `i7-13700H`) before generic family models.

### 3. Repository Optimization
- Removed 164 non-runtime documentation, test, and build artifacts from Git tracking and updated `.gitignore`.

---

##  Verification & Test Suite
- **100% Test Pass Rate**: 83/83 unit tests passing.

