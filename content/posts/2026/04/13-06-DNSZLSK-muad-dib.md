---
title: MUADDIB Scanner
date: 2026-04-13 06:28:33 +00:00
tags:
  - DNSZLSK
  - GitHub Actions
draft: false
repo: https://github.com/DNSZLSK/muad-dib
marketplace: https://github.com/marketplace/actions/muad-dib-scanner
version: v2.10.87
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/DNSZLSK/muad-dib** to version **v2.10.87**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/muad-dib-scanner) to find the latest changes.

## Action Summary

MUAD'DIB is a security scanning tool designed to detect threats in npm and PyPI packages by analyzing dependencies for known malicious indicators, suspicious behaviors, and supply chain vulnerabilities. It automates threat detection using advanced techniques such as deobfuscation, inter-module dataflow analysis, machine learning classifiers, and sandboxing, addressing the growing issue of supply chain attacks. Key capabilities include pre-installation scans, risk scoring, detailed threat explanations, and exporting results in multiple formats to streamline security workflows.

## What's Changed

- tryAcquireSandboxSlot() atomique pour T1b/T2
- Defer immédiat si slots pleins (0ms au lieu de 90s+ blocked)
- Deferred maxRuns=1 (270s→90s)
