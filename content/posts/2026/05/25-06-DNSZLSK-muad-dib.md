---
title: MUADDIB Scanner
date: 2026-05-25 06:31:34 +00:00
tags:
  - DNSZLSK
  - GitHub Actions
draft: false
repo: https://github.com/DNSZLSK/muad-dib
marketplace: https://github.com/marketplace/actions/muad-dib-scanner
version: v2.11.38
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/DNSZLSK/muad-dib** to version **v2.11.38**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/muad-dib-scanner) to find the latest changes.

## Action Summary

MUAD'DIB is a security scanning tool designed to detect and analyze supply chain threats in npm and PyPI packages. It leverages 17 parallel scanners, behavioral analysis, a deobfuscation engine, and machine learning to identify known threats (225,000+ IOCs) and suspicious patterns, helping users preemptively block malicious dependencies before installation. Key features include risk scoring, interactive scanning, detailed threat explanations, and integration with CI/CD pipelines for automated security workflows.

## What's Changed

P1b: --cyclonedx flag for CycloneDX 1.5 JSON BOM output. Integrates with Dependency-Track, Anchore, Snyk, Trivy. Also fixes AST-091 self-detection FP (ctx.relPath typo + EXCLUDED_FILES update).
