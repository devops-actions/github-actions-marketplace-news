---
title: EcoTrace Carbon Gate
date: 2026-05-14 06:26:14 +00:00
tags:
  - Zwony
  - GitHub Actions
draft: false
repo: https://github.com/Zwony/ecotrace
marketplace: https://github.com/marketplace/actions/ecotrace-carbon-gate
version: v1.0.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/Zwony/ecotrace** to version **v1.0.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ecotrace-carbon-gate) to find the latest changes.

## Action Summary

EcoTrace is a Python library designed to measure the carbon footprint of applications in real-time with hardware-level precision. It automates tasks such as enforcing carbon budgets, differential tracking to isolate code emissions, and providing session summaries for environmental accountability. Key capabilities include CI/CD integration for carbon budget gating, function-level instrumentation, and actionable insights through relatable carbon equivalences.

## What's Changed

## Overview
EcoTrace v1.0.1 marks the transition to a production-stable release for both the Python library and the VS Code extension. This version introduces active carbon budget enforcement, enhanced precision through differential tracking, and professional-grade CI/CD integration tools.

## New Features
- **Carbon Budget Enforcement (Core):** Active monitoring and enforcement of carbon limits with multi-tier alerts (80% warning and 100% threshold reached). Supports optional callback hooks for automated session termination.
- **CI/CD Carbon Gate (CLI):** Introduced the 'ecotrace gate' CLI command for integration into automated pipelines, enabling automated build failure if the carbon budget is exceeded.
- **EcoTrace Monitor (VS Code Extension):**
    - **Live Carbon Budget Gauge:** Integrated a visual sidebar progress indicator for real-time tracking of session carbon against defined budgets.
    - **Enhanced CodeLens UI:** Instrumented functions now display real-time carbon metrics alongside intuitive equivalences (e.g., Google search equivalents).
    - **AI-Powered Optimization:** Direct integration with Google Gemini AI to provide refactoring suggestions for energy-efficient code.
    - **Status Bar Integration:** Added color-coded session totals in the editor status bar for high-level carbon observability.
- **Differential Tracking Engine:** Implementation of baseline idle subtraction to filter OS background noise from reported metrics.

### Official GitHub Action
EcoTrace is now available on the GitHub Marketplace! Integrate carbon gating directly into your workflows:
- **Zero-Config Gating:** Fail builds automatically if carbon thresholds are exceeded.
- **Easy Integration:** Single-line setup via `uses: Zwony/ecotrace@v1.0.1`.


## Bug Fixes and Improvements
- **Exception Handling:** Resolved an issue where user-defined exceptions were being swallowed during measurement.
- **GPU Monitoring Stability:** Fixed critical unpacking errors in GPU carbon measurement and report generation.
- **Packaging:** Corrected distribution packages to include all submodules and plugins.
- **Dependency Management:** Optimized installation footprint by moving specialized drivers to optional extras.
