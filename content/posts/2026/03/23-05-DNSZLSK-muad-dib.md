---
title: MUADDIB Scanner
date: 2026-03-23 05:54:51 +00:00
tags:
  - DNSZLSK
  - GitHub Actions
draft: false
repo: https://github.com/DNSZLSK/muad-dib
marketplace: https://github.com/marketplace/actions/muad-dib-scanner
version: v2.10.6
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/DNSZLSK/muad-dib** to version **v2.10.6**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/muad-dib-scanner) to find the latest changes.

## Action Summary

MUAD'DIB is a security-focused GitHub Action that scans npm and PyPI packages for known threats, suspicious behaviors, and vulnerabilities using a combination of 14 parallel scanners, machine learning classifiers, and a deobfuscation engine. It automates dependency analysis, risk scoring, and threat detection, while also providing advanced features like sandboxing, interactive scanning, pre-installation checks, and detailed reporting. This tool serves as a free, educational first line of defense against supply chain attacks in software projects.

## Release notes

Two production bugs fixed:
- ML1 high-confidence predictions (p>=0.90) now prevent sandbox clean suppression
- IOC matches send P1 fallback webhook even if scan fails
2650 tests, 7 new
