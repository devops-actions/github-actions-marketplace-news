---
title: MUADDIB Scanner
date: 2026-03-29 21:51:53 +00:00
tags:
  - DNSZLSK
  - GitHub Actions
draft: false
repo: https://github.com/DNSZLSK/muad-dib
marketplace: https://github.com/marketplace/actions/muad-dib-scanner
version: v2.10.36
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/DNSZLSK/muad-dib** to version **v2.10.36**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/muad-dib-scanner) to find the latest changes.

## Action Summary

MUAD'DIB is a security scanning tool designed to detect known threats and suspicious behavioral patterns in npm and PyPI packages. It automates the analysis of dependencies through 14 parallel scanners, a deobfuscation engine, inter-module dataflow analysis, machine learning classifiers, and a Docker sandbox, providing risk scoring, detailed explanations, and actionable insights. By identifying malicious packages and blocking risky installations, it helps developers prevent supply chain attacks and secure their projects during development and CI/CD workflows.

## What's Changed

- Suspect tarball archiving (fire-and-forget, ~1000/day, 30-day cleanup)
- Haiku LLM Detective: 6 FP pattern rules + 4 few-shot benign examples
- 2913 tests, 0 failures
