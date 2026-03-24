---
title: MUADDIB Scanner
date: 2026-03-24 22:05:37 +00:00
tags:
  - DNSZLSK
  - GitHub Actions
draft: false
repo: https://github.com/DNSZLSK/muad-dib
marketplace: https://github.com/marketplace/actions/muad-dib-scanner
version: v2.10.8
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/DNSZLSK/muad-dib** to version **v2.10.8**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/muad-dib-scanner) to find the latest changes.

## Action Summary

MUAD'DIB is a security-focused GitHub Action and CLI tool designed to detect and mitigate supply chain threats in npm and PyPI packages. It leverages advanced techniques like multi-engine scanning, deobfuscation, behavior analysis, and machine learning to identify known threats, suspicious patterns, and potential vulnerabilities. By automating dependency scanning, risk scoring, and pre-installation checks, MUAD'DIB helps developers proactively secure their software supply chains and reduce the risk of malicious package exploitation.

## Release notes

Fix: ML override (p>=0.90) no longer bypasses hasHighOrCritical check. Packages with ALL-LOW findings suppressed from webhooks. Adds ML DEFERRED diagnostic log. Dataset

tests skip gracefully when absent.
