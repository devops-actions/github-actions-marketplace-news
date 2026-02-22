---
title: MUADDIB Scanner
date: 2026-02-22 13:24:36 +00:00
tags:
  - DNSZLSK
  - GitHub Actions
draft: false
repo: https://github.com/DNSZLSK/muad-dib
marketplace: https://github.com/marketplace/actions/muad-dib-scanner
version: v2.2.18
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/DNSZLSK/muad-dib** to version **v2.2.18**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/muad-dib-scanner) to find the latest changes.

## Action Summary

MUAD'DIB is a security-focused GitHub Action designed to scan npm and PyPI dependencies for known threats, suspicious patterns, and behavioral anomalies, helping developers mitigate supply-chain attacks. It automates threat detection through static and dynamic analysis, deobfuscation, and risk scoring, providing actionable insights before installing packages. This tool complements enterprise-grade solutions by offering developers a quick, free initial assessment to ensure package safety.

## Release notes

## Fixes

### Daily Report  Delta instead of cumulative
- Report now shows packages scanned since last report, not total

### Spinner Animation  Works during scans
- All 13 scanners wrapped in yieldThen() to unblock event loop

### False Positive  Skip IOC for local deps
- link:, file:, workspace: dependencies no longer flagged as malicious

## Tests
862 pass, 0 fail
