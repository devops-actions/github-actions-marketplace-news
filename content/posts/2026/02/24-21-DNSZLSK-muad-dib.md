---
title: MUADDIB Scanner
date: 2026-02-24 21:42:10 +00:00
tags:
  - DNSZLSK
  - GitHub Actions
draft: false
repo: https://github.com/DNSZLSK/muad-dib
marketplace: https://github.com/marketplace/actions/muad-dib-scanner
version: v2.2.28
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/DNSZLSK/muad-dib** to version **v2.2.28**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/muad-dib-scanner) to find the latest changes.

## Action Summary

MUAD'DIB is a free security tool designed to detect and analyze potential threats in npm and PyPI dependencies, combining static and dynamic analysis, anomaly detection, and deobfuscation techniques. It automates package scanning, risk scoring, and threat identification, while providing actionable insights to help users respond to supply chain attacks. This tool serves as a preliminary defense for developers, complementing enterprise-grade solutions by offering quick and accessible checks before installing unknown packages.

## Release notes

5 new AST rules: MCP config injection (CRITICAL), git hooks injection (HIGH), dynamic env harvesting (HIGH), DNS chunk exfiltration (HIGH), LLM API key harvesting (MEDIUM). Total: 1347 tests, 102 rules, 14 scanners.
