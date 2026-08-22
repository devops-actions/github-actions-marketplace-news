---
title: EcoTrace Carbon Gate
date: 2026-08-22 21:46:34 +00:00
tags:
  - Zwony
  - GitHub Actions
draft: false
repo: https://github.com/Zwony/ecotrace
marketplace: https://github.com/marketplace/actions/ecotrace-carbon-gate
version: core-v1.5.1
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  EcoTrace is a lightweight Python library that provides real-time hardware-level transparency of Python applications' carbon footprints. It automates monitoring and analysis, offering features such as cloud telemetry streaming, terminal authentication, AI-powered insights, and WebSocket live streaming. The latest version introduces expanded CPU TDP database support and enhanced compatibility with modern Python versions.
---


Version updated for **https://github.com/Zwony/ecotrace** to version **core-v1.5.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ecotrace-carbon-gate) to find the latest changes.

## Action Summary

EcoTrace is a lightweight Python library that provides real-time hardware-level transparency of Python applications' carbon footprints. It automates monitoring and analysis, offering features such as cloud telemetry streaming, terminal authentication, AI-powered insights, and WebSocket live streaming. The latest version introduces expanded CPU TDP database support and enhanced compatibility with modern Python versions.

## What's Changed

## EcoTrace v1.5.1 Release Notes

### Overview
EcoTrace v1.5.1 is a stability and telemetry compatibility patch release following v1.5.0. It resolves a Windows COM thread initialization crash in exporter background threads, restores full parameter forwarding (run_id, run_label) to CloudExporter for web dashboard filtering, standardizes exporter method signatures, and prevents eager circular imports.

### Key Improvements and Fixes in v1.5.1

1. **Windows COM Thread Pool Initialization Guard (core.py)**
   - Prevented Windows fatal exception (0x800401f0) by wrapping worker thread execution in _dispatch_exporters with CoInitialize / CoUninitialize guards on Windows.

2. **Full Parameter Forwarding for CloudExporter (core.py and cloud.py)**
   - Exporter dispatch now forwards run_id and run_label parameters to registered exporters, enabling dashboard session filtering.
   - Dynamic User-Agent header resolves package version dynamically.

3. **Exporter Signature Consistency and Forward Compatibility**
   - Added **kwargs support across CloudExporter, OTelExporter, and WebhookExporter signatures.

4. **Dynamic Exporter Module Lazy Loading (exporters/__init__.py)**
   - Implemented module-level __getattr__ lazy loading in ecotrace.exporters to prevent circular import dependencies.

5. **Logger Level Alignment (logger.py)**
   - Restored logging.WARNING as default package log level across ecotrace.logger.

### Verification and Test Suite
- 100% test pass rate across 99 independent unit tests.
- Verified clean Windows COM execution during thread pool metric dispatch.
