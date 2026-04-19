---
title: HumaneProxy Safety Benchmark
date: 2026-04-19 06:43:48 +00:00
tags:
  - Vishisht16
  - GitHub Actions
draft: false
repo: https://github.com/Vishisht16/Humane-Proxy
marketplace: https://github.com/marketplace/actions/humaneproxy-safety-benchmark
version: v0.4.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/Vishisht16/Humane-Proxy** to version **v0.4.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/humaneproxy-safety-benchmark) to find the latest changes.

## Action Summary

HumaneProxy is a lightweight middleware solution designed to ensure user safety when interacting with large language models (LLMs). It intercepts user messages to detect self-harm ideation or criminal intent, blocking or flagging unsafe content, notifying operators, and providing empathetic responses before the content reaches the LLM. By automating the detection of high-risk messages, it helps organizations mitigate risks related to user safety while seamlessly forwarding safe messages to the LLM.

## What's Changed

This release pivots HumaneProxy further into the DevSecOps lifecycle by introducing robust CLI benchmarking capabilities, a native GitHub Action for PR safety gates, and enterprise-grade compliance transparency.

### **🎉 Major Features**
- **Safety Benchmarking Dashboard:** Added the `benchmark` CLI command (`hp benchmark --dataset evals/sample.json`) to evaluate custom datasets against HumaneProxy's pipeline. It produces beautiful terminal analytics containing latency statistics, precision, recall, and a per-category confusion matrix using `rich`.
- **GitHub Actions Integration:** HumaneProxy is now available as a GitHub Action! Block PRs automatically if testing thresholds fail, preventing regressions from slipping into production.
- **`hp` Shorthand Alias:** Added the `hp` CLI shortcut in `pyproject.toml` so developers can run commands quickly (e.g., `hp start`, `hp check`, `hp benchmark`).
- **Sample Evaluations Dataset:** Packaged `evals/sample.json` containing 20 curated baseline strings designed to safely test false positives and boundary conditions.

### **🔒 Security & Fast-Tracking**
- **Enterprise Compliance Specs:** Created `COMPLIANCE.md` heavily targeted towards engineering leaders, defining our explicit architecture controls supporting HIPAA, GDPR, and SOC 2 requirements. Emphasises the strict zero-BAA threshold achieved by self-hosting.
- **Coordinated Vulnerability Disclosure:** Deployed standard `.github/SECURITY.md` defining supported versions, timelines, and email escalation routes indicating explicit exclusion parameters.
- **CODEOWNERS Lock:** Adopted `.github/CODEOWNERS` blocking unregulated modification of core configuration and architecture files.

### **🧩 Ecosystem Polish & Maintenance**
- **Contributor License Agreement (CLA):** `CONTRIBUTING.md` now establishes a CLA mandate to eliminate long-term evolution and liability bottlenecks. 
- **Platform Availability Enhancements:** Included an "Available On" matrix in `README.md` containing transparent platform badges for PyPI, Glama AAA Registry, and the MCP Marketplace. Added a new dedicated "As an MCP Server" quick start flow.
- **FastAPI Core Bump:** Shifted minimum dependency for FastAPI to `>=0.109.1` successfully addressing the `python-multipart` Content-Type Header ReDoS vulnerability (GHSA-qf9m-vfgh-m389).
- **Marketplace Strict Typing:** `server.json` parameters now explicitly mark `"required": false` ensuring parity against stubborn third-party MCP JSON parsers.

***

**Full Changelog**: https://github.com/Vishisht16/Humane-Proxy/compare/v0.3.1...v0.4.0
