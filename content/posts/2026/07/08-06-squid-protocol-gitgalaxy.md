---
title: GitGalaxy Scanner
date: 2026-07-08 06:25:37 +00:00
tags:
  - squid-protocol
  - GitHub Actions
draft: false
repo: https://github.com/squid-protocol/gitgalaxy
marketplace: https://github.com/marketplace/actions/gitgalaxy-scanner
version: v.2.3.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/squid-protocol/gitgalaxy** to version **v.2.3.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gitgalaxy-scanner) to find the latest changes.

## What's Changed

## 🚀 Overview

GitGalaxy **v2.3.1** is a critical security and data-integrity hotfix. This release locks down structural data provenance for air-gapped environments, resolves machine-learning sparsity poisoning, and hardens the engine against false positives in deep monorepos and shallow CI/CD clones. 

To guarantee the engine never silently degrades, we have doubled our continuous integration pipeline by introducing the **Golden Crucible**: a parallel, zero-dependency environment that validates structural telemetry across 50+ languages on every commit along with the full-dependency test we were already doing. 

---

## 🔥 Major Architectural Highlights

### 1. Absolute Data Provenance (Zero-Dependency Mode)
Previously, if the engine degraded to bypass C-backed dependencies (`NetworkX`, `XGBoost`, `Tiktoken`), downstream recorders generated mathematically valid `0.0` values instead of safely treating skipped computations as `NULL`. 
* **The Fix:** Omitted values (PageRank, AI Threat Scores, Token Mass) are now explicitly enforced as strict SQL `NULL`s to prevent EDW poisoning. Forensic JSON manifests prominently flag skipped metrics as `[BYPASSED - ZERO DEPENDENCY MODE]`. 
* **UI/WebGPU:** Unscanned artifacts now explicitly render as neutral/grey in the 3D HUD and histograms rather than adopting default safe colors.

### 2. XGBoost NaN Sparsity Preservation (#98)
Fixed a critical ML-Ops pipeline collapse where empty spatial telemetry was incorrectly zero-filled prior to inference. The engine now correctly preserves native `NaN` sparsity matrices, restoring XGBoost's directional logic for sparse structural signatures.

### 3. Minified Payload Shielding (#121)
Heavy frontend bundles and Webpack-minified payloads previously bottlenecked the AST-free regex engines. We introduced an `O(N)` literal fallback screen that instantly detects high-density minified payloads and safely drops them from the execution queue without hanging the scanner.

### 4. Monorepo Alias Isolation (#103)
In dense TypeScript/JavaScript monorepos, local package aliases were globally clobbering one another. Alias resolution is now strictly isolated to its localized sector, restoring precise supply chain mapping.

---

## 📋 Comprehensive Changelog

### 🔒 Security & AppSec
* **Fixed (#123):** Resolved false-equivalency captures in LHS (Left-Hand Side) assignment taint tracking.
* **Fixed:** Reactivated the Dev Agent Firewall by resolving backend schema drift and patching missing empty-state return keys.
* **Added:** Dynamic directory routing and automated RAM graph generation for the firewall module.

### 🧠 Core Engine & Metrics
* **Fixed (#104):** Applied spatial correlation to the OOM Bomb multiplier, resolving density scaling inaccuracies for files with massive localized state mutations.
* **Fixed (#99):** Neutralized the OS `mtime` fallback logic. The chronometer now successfully detects shallow CI/CD clones (where all file timestamps are identical) and prevents temporal collapse.
* **Fixed:** Suppressed threat counters for unknown imports specifically on verified, allowlisted paths.

### ⚙️ CI/CD & Testing Infrastructure
* **Implemented (#107):** The Golden Crucible Pipeline. Wires a parallel matrix job to execute the engine in a sterile, air-gapped environment for deterministic zero-dependency testing.
* **Hardened:** Centralized the "Chaos Monkey" test suite, adding explicit mock validations for `Tiktoken`, `NetworkX`, and `XGBoost` graceful degradation.
* **Refined:** Resolved CodeQL/Muninn unused variable/import alerts for a pristine security sweep.
* **Chore:** Implemented full local dogfooding for the GitHub Action wrapper and injected a community license key to bypass arbitrary runner timeouts.
* **Policy:** Formalized production `CODEOWNERS` and a safe security reporting policy.
