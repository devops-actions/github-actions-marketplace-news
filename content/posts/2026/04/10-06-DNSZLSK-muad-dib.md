---
title: MUADDIB Scanner
date: 2026-04-10 06:34:20 +00:00
tags:
  - DNSZLSK
  - GitHub Actions
draft: false
repo: https://github.com/DNSZLSK/muad-dib
marketplace: https://github.com/marketplace/actions/muad-dib-scanner
version: v2.10.70
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/DNSZLSK/muad-dib** to version **v2.10.70**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/muad-dib-scanner) to find the latest changes.

## Action Summary

MUAD'DIB is a security-focused GitHub Action and CLI tool designed to detect and analyze threats in npm and PyPI packages by leveraging multiple scanning engines, deobfuscation techniques, dataflow analysis, and machine learning classifiers. It automates the identification of known Indicators of Compromise (IOCs) and suspicious behavioral patterns, providing risk scores, detailed explanations, and actionable insights to mitigate supply chain attacks. Its key capabilities include pre-installation threat detection, sandbox analysis, strict scanning modes, and integration with CI/CD workflows for enhanced software dependency security.

## What's Changed

runShadowPrediction for all npm score >= 20, log-only. Retrained XGBoost on 50 behavioral features (10 metadata excluded). P=0.802 R=0.928. Shadow logs via [ML-SHADOW]. Main ML remains disabled.
