---
title: MUADDIB Scanner
date: 2026-04-11 13:40:26 +00:00
tags:
  - DNSZLSK
  - GitHub Actions
draft: false
repo: https://github.com/DNSZLSK/muad-dib
marketplace: https://github.com/marketplace/actions/muad-dib-scanner
version: v2.10.72
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/DNSZLSK/muad-dib** to version **v2.10.72**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/muad-dib-scanner) to find the latest changes.

## Action Summary

MUAD'DIB is a security-focused GitHub Action designed to scan npm and PyPI packages for known threats, suspicious behaviors, and vulnerabilities using advanced detection techniques such as deobfuscation, inter-module dataflow analysis, and ML classifiers. It automates threat detection, risk scoring, and package scanning prior to installation, addressing the growing problem of supply chain attacks on open-source dependencies. Key capabilities include parallel scanning, interactive mode, detailed threat explanations, exportable reports, and integration with CI/CD pipelines for proactive risk management.

## What's Changed

Two-layer fix: all-LOW findings downgrade to T3 instead of T2. DEFERRED_MIN_SCORE=5 guard blocks low-score packages from consuming sandbox slots. Fixes @eeacms burst monopolizing deferred slot.
