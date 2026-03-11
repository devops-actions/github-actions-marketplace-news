---
title: MUADDIB Scanner
date: 2026-03-11 05:55:03 +00:00
tags:
  - DNSZLSK
  - GitHub Actions
draft: false
repo: https://github.com/DNSZLSK/muad-dib
marketplace: https://github.com/marketplace/actions/muad-dib-scanner
version: v2.6.1
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/DNSZLSK/muad-dib** to version **v2.6.1**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/muad-dib-scanner) to find the latest changes.

## Action Summary

MUAD'DIB is a security-focused GitHub Action designed to detect and assess threats in npm and PyPI dependencies through static and dynamic analysis, deobfuscation, behavioral anomaly detection, and security audits. It automates package scanning, risk scoring, and response guidance, helping developers identify and mitigate supply-chain attacks before threats become widespread. This tool serves as a free, educational first line of defense for developers, complementing enterprise-grade solutions for package security.

## Release notes

## What's new

- **Bounded path infrastructure**: 50 nodes, 200 edges, 5s timeout
- **Imported sink method detection**: reporter.report(taintedData) where report() internally calls https.request()
- **Class this.X instance taint**: this.reader = new Reader() in constructor
- **EventEmitter cross-module**: emit/on with tainted data + network sink
- **Stream pipeline**: createReadStream  pipe  network sink
- **5/5 Group A DPRK samples detected** (scores 26-30)

## Metrics
- 1932 tests (+27), 0 regressions
- TPR 93.9% | FPR 12.3% | ADR 97.3%
