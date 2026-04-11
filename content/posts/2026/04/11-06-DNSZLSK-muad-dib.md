---
title: MUADDIB Scanner
date: 2026-04-11 06:27:45 +00:00
tags:
  - DNSZLSK
  - GitHub Actions
draft: false
repo: https://github.com/DNSZLSK/muad-dib
marketplace: https://github.com/marketplace/actions/muad-dib-scanner
version: v2.10.71
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/DNSZLSK/muad-dib** to version **v2.10.71**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/muad-dib-scanner) to find the latest changes.

## Action Summary

MUAD'DIB is a security-focused GitHub Action and CLI tool designed to detect and analyze threats in npm and PyPI package dependencies. It uses advanced techniques such as parallel scanning, deobfuscation, dataflow analysis, machine learning classifiers, and sandboxing to identify known supply chain threats, suspicious behaviors, and over 225,000 Indicators of Compromise (IOCs). This action automates dependency scanning, provides actionable risk scores, and blocks malicious packages, helping developers mitigate risks in their software supply chain.

## What's Changed

Score feature leak removed. 548 curated benign packages scanned. Shadow model retrained: 48 features, 129 trees. A/B test: 78/136 FP fixed on legitimate high-score packages, 0 regressions.
