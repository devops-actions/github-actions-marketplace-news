---
title: MUADDIB Scanner
date: 2026-03-01 13:24:11 +00:00
tags:
  - DNSZLSK
  - GitHub Actions
draft: false
repo: https://github.com/DNSZLSK/muad-dib
marketplace: https://github.com/marketplace/actions/muad-dib-scanner
version: v2.4.5
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/DNSZLSK/muad-dib** to version **v2.4.5**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/muad-dib-scanner) to find the latest changes.

## Action Summary

MUAD'DIB is a security-focused GitHub Action designed to detect and analyze threats in npm and PyPI dependencies. It combines static and dynamic analysis, deobfuscation, dataflow tracking, and behavioral anomaly detection to identify known malicious packages and suspicious patterns, offering a risk score and actionable insights to guide responses. This tool automates pre-installation scans and provides developers with a free, efficient solution to mitigate supply chain attacks before introducing external dependencies into their projects.

## Release notes

- Popularity pre-filter: skip sandbox for popular packages with only MEDIUM/LOW findings
- Detailed findings logging: [MONITOR] FINDINGS line for each suspect
- Webhook filtering: block temporal anomalies and MEDIUM-only packages
- 1460 tests, 0 failures
