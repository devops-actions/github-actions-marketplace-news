---
title: MUADDIB Scanner
date: 2026-03-10 05:58:13 +00:00
tags:
  - DNSZLSK
  - GitHub Actions
draft: false
repo: https://github.com/DNSZLSK/muad-dib
marketplace: https://github.com/marketplace/actions/muad-dib-scanner
version: v2.6.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/DNSZLSK/muad-dib** to version **v2.6.0**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/muad-dib-scanner) to find the latest changes.

## Action Summary

This GitHub Action, MUAD'DIB, is a security tool designed to detect and analyze threats in npm and PyPI package dependencies. It combines static and dynamic analysis, deobfuscation, behavioral anomaly detection, and other advanced techniques to identify malicious packages and patterns, while providing risk scores and actionable insights for remediation. MUAD'DIB automates threat detection and response, offering developers a quick, free solution to enhance supply chain security before relying on enterprise-grade tools.

## Release notes

## What's new

- **Intent graph** (src/intent-graph.js): intra-file sourcesink coherence analysis
- **5 eval evasion fixes**: eval factory, .call.call, regex .source, charcode arithmetic, object method alias
- **10 adversarial samples**: 5 Group A (pure API/DPRK), 5 Group B (eval evasion)
- **2 new rules**: MUADDIB-INTENT-001, MUADDIB-INTENT-002

## Metrics
- 1905 tests, 129 rules, 0 regressions
- TPR 93.9% | FPR 12.3% | ADR 97.3%
