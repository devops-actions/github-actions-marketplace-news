---
title: MUADDIB Scanner
date: 2026-05-25 14:38:21 +00:00
tags:
  - DNSZLSK
  - GitHub Actions
draft: false
repo: https://github.com/DNSZLSK/muad-dib
marketplace: https://github.com/marketplace/actions/muad-dib-scanner
version: v2.11.44
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/DNSZLSK/muad-dib** to version **v2.11.44**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/muad-dib-scanner) to find the latest changes.

## Action Summary

MUAD'DIB is a security scanning tool designed to detect and analyze threats in npm and PyPI packages, combining 17 parallel scanners, advanced deobfuscation, inter-module dataflow analysis, and machine learning classifiers. It automates the detection of known malicious packages, suspicious behaviors, and potential vulnerabilities, offering risk scores, detailed explanations, and proactive threat-blocking during dependency installation. Ideal as a first line of defense, it simplifies supply chain security for developers and CI/CD workflows.

## What's Changed

6 detectors PYAST-001..008: cmdclass, entry_points, module-level exec/subprocess/pickle/dynamic-import. 20th parallel scanner via tree-sitter-python WASM.
