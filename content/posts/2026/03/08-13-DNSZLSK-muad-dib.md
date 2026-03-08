---
title: MUADDIB Scanner
date: 2026-03-08 13:33:27 +00:00
tags:
  - DNSZLSK
  - GitHub Actions
draft: false
repo: https://github.com/DNSZLSK/muad-dib
marketplace: https://github.com/marketplace/actions/muad-dib-scanner
version: v2.5.16
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/DNSZLSK/muad-dib** to version **v2.5.16**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/muad-dib-scanner) to find the latest changes.

## Action Summary

MUAD'DIB is a supply chain security tool that detects and analyzes threats in npm and PyPI dependencies using static and dynamic analysis, deobfuscation, dataflow, and behavioral anomaly detection. It helps identify known malicious packages, suspicious patterns, and potential vulnerabilities, providing risk scores and actionable insights for remediation. Designed as a free, first-line defense, it complements enterprise-grade security tools by offering developers an accessible way to assess package safety before installation.

## Release notes

## Red Team
- 27 adversarial samples created and tested (27/27 PASS)
- Cross-file callback, WASM C2, SVG payload, console override, Proxy getter DNS exfil, Symbol iterator, defineProperty getter, stream pipe, sourcemap payload
- Samples removed from public repo (local-only for regression)

## FP Reduction P5  7 heuristic precision fixes
- setTimeout: only flag string Literal args
- eval('this'): no longer sets hasDynamicExec
- SAFE_ENV_VARS: +18 CI vars, framework prefixes, segment matching
- credential_regex_harvest: keyword must be inside regex pattern
- dist/ two-notch downgrade for bundler artifacts
- Proxy: severity gated on credential signals
- os.hostname() reclassified to telemetry_read

## Metrics
- TPR: 93.9% (46/49)
- FPR: 13.6% (72/529)
- ADR: 96.4% (106/110)
- 1857 tests, 0 failed
- 121+ rules
