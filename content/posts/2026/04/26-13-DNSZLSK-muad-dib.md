---
title: MUADDIB Scanner
date: 2026-04-26 13:39:23 +00:00
tags:
  - DNSZLSK
  - GitHub Actions
draft: false
repo: https://github.com/DNSZLSK/muad-dib
marketplace: https://github.com/marketplace/actions/muad-dib-scanner
version: v2.10.101
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/DNSZLSK/muad-dib** to version **v2.10.101**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/muad-dib-scanner) to find the latest changes.

## Action Summary

MUAD'DIB is a security scanning tool that detects known threats and suspicious behavioral patterns in npm and PyPI packages using 14 parallel scanners, a deobfuscation engine, inter-module dataflow analysis, and machine learning models. It automates the identification of supply chain vulnerabilities, including over 225,000 indicators of compromise (IOCs), and provides actionable insights to mitigate risks. Key features include pre-installation package scanning, risk scoring, detailed threat explanations, exportable reports, and advanced detection modes for enhanced protection.

## What's Changed

Fix OOM crashes caused by read-modify-write of detections.json under worker concurrency. Migration to append-only JSONL with in-memory dedup. Extended handleMemoryPressure CRITICAL scope to AST/file/typosquat main-thread caches.
