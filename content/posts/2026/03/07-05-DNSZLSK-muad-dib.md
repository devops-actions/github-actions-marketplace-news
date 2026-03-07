---
title: MUADDIB Scanner
date: 2026-03-07 05:57:00 +00:00
tags:
  - DNSZLSK
  - GitHub Actions
draft: false
repo: https://github.com/DNSZLSK/muad-dib
marketplace: https://github.com/marketplace/actions/muad-dib-scanner
version: v2.5.10
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/DNSZLSK/muad-dib** to version **v2.5.10**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/muad-dib-scanner) to find the latest changes.

## Action Summary

MUAD'DIB is a security scanning tool designed to detect and analyze threats in npm and PyPI dependencies, leveraging static and dynamic analysis, behavioral anomaly detection, and deobfuscation techniques. It automates the identification of known malicious packages and suspicious patterns, providing developers with actionable insights and risk scores to mitigate supply chain attacks. As a free, educational first line of defense, it complements enterprise-grade tools by offering quick and accessible pre-installation scans and threat response guidance.

## Release notes

## Changes

### Fix 1  BENIGN_PACKAGE_WHITELIST removed
- 8 packages hardcodés supprimés (data leakage / bypass potentiel)
- Scoring générique suffisant  whitelist redondant

### Fix 2  Format-valid canary tokens
- Tokens au format réel : ghp_ + 36 chars, AKIA + 16 base32, npm_ + 36 hex
- Plus de marqueur MUADDIB_CANARY_ détectable par le malware
- Détection par valeur exacte inchangée

### Fix 3  Sandbox anti-fingerprinting
- CI profile randomisé : 1 provider par run (GitHub Actions OU GitLab CI OU Travis OU CircleCI)
- MUADDIB_TIME_OFFSET_MS  NODE_TIMING_OFFSET
- Container name : muaddib-sandbox-*  npm-audit-*
- Preload path : /opt/preload.js  /opt/node_setup.js

### Metrics
- FPR: 6.0% (stable)
- TPR: 91.8% (stable)
- ADR: 98.8% (stable)
- Tests: 1672 passed, 0 failed
