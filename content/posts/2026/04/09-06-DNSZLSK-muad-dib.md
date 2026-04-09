---
title: MUADDIB Scanner
date: 2026-04-09 06:09:07 +00:00
tags:
  - DNSZLSK
  - GitHub Actions
draft: false
repo: https://github.com/DNSZLSK/muad-dib
marketplace: https://github.com/marketplace/actions/muad-dib-scanner
version: v2.10.66
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/DNSZLSK/muad-dib** to version **v2.10.66**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/muad-dib-scanner) to find the latest changes.

## Action Summary

MUAD'DIB is a security-focused GitHub Action designed to detect and analyze threats in npm and PyPI packages. It automates the scanning of dependencies using 14 parallel scanners, a deobfuscation engine, dataflow analysis, and machine learning classifiers to identify known threats and suspicious behavioral patterns, preventing supply chain attacks. Key capabilities include risk scoring, pre-installation threat blocking, detailed detection explanations, and exporting results in multiple formats, providing developers with a proactive defense against malicious packages.

## What's Changed

Fix relabel CLI deadlock: bypass semaphore, add progress logs, reduce delay to 50ms.
