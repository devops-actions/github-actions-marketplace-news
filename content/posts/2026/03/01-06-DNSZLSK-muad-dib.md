---
title: MUADDIB Scanner
date: 2026-03-01 06:09:51 +00:00
tags:
  - DNSZLSK
  - GitHub Actions
draft: false
repo: https://github.com/DNSZLSK/muad-dib
marketplace: https://github.com/marketplace/actions/muad-dib-scanner
version: v2.4.4
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/DNSZLSK/muad-dib** to version **v2.4.4**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/muad-dib-scanner) to find the latest changes.

## Action Summary

MUAD'DIB is a security scanning tool designed to detect and analyze threats in npm and PyPI dependencies, combining static and dynamic analysis, deobfuscation, and anomaly detection to identify malicious packages and suspicious patterns. It automates the identification of risks during package installation, provides detailed risk scoring and explanations, and assists in responding to supply-chain attacks. This tool complements enterprise-grade solutions by offering developers a quick, free pre-installation check to enhance software supply-chain security.

## Release notes

- Datadog 17K benchmark: TPR ~100% on JS malware, 88.2% raw (2077 misses are phishing/binaries)
- Webhook filtering: only IOC match, score>=50, sandbox>0, canary exfil, combined AST
- Removed noise: publish anomaly, maintainer change, isolated AST  journalctl only
- Updated all documentation with transparent methodology
