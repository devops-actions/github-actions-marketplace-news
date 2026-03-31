---
title: MUADDIB Scanner
date: 2026-03-31 22:13:46 +00:00
tags:
  - DNSZLSK
  - GitHub Actions
draft: false
repo: https://github.com/DNSZLSK/muad-dib
marketplace: https://github.com/marketplace/actions/muad-dib-scanner
version: v2.10.42
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/DNSZLSK/muad-dib** to version **v2.10.42**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/muad-dib-scanner) to find the latest changes.

## Action Summary

MUAD'DIB is a security scanning tool designed to detect and analyze threats within npm and PyPI packages, addressing the growing risks of software supply chain attacks. It combines multiple detection methods, including 14 parallel scanners, machine learning classifiers, and a deobfuscation engine, to identify known threats, suspicious patterns, and behavioral indicators. The tool automates threat detection, risk scoring, and mitigation during package scans and installations, offering developers a proactive first line of defense for securing dependencies in their projects.

## What's Changed

Critical fix: poll and processing now run independently. The monitor will never miss packages during long processing batches. Fixes the root cause of missing the axios supply chain attack.
