---
title: MUADDIB Scanner
date: 2026-02-21 21:29:18 +00:00
tags:
  - DNSZLSK
  - GitHub Actions
draft: false
repo: https://github.com/DNSZLSK/muad-dib
marketplace: https://github.com/marketplace/actions/muad-dib-scanner
version: v2.2.12
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/DNSZLSK/muad-dib** to version **v2.2.12**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/muad-dib-scanner) to find the latest changes.

## Action Summary

MUAD'DIB is a security-focused GitHub Action that scans npm and PyPI dependencies for known threats, suspicious patterns, and behavioral anomalies. It automates the detection of supply chain vulnerabilities and provides actionable insights, such as risk scoring and response guidance, to help developers mitigate risks before installing packages. By combining static and dynamic analysis, deobfuscation, and anomaly detection, it serves as a free, educational tool to complement enterprise-grade solutions.

## Release notes

## MUAD'DIB v2.2.12

### Metrics
- **TPR**: 91.8% (45/49 real-world malware samples)
- **ADR**: 100% (75/75 adversarial + holdout samples)
- **FPR**: ~13%
- **Tests**: 807 pass

### Detection improvements
- AST-022: crypto.createDecipher detection (flatmap-stream pattern)
- AST-023: module._compile detection
- Dataflow: .secretKey/.privateKey as credential sources
- Dataflow: Discord/leveldb paths added

### Ground Truth expansion
- 51 real-world malware samples reconstructed from public reports
- Sources: Snyk, Socket, Datadog, Phylum, OSSF

### ADR consolidation
- 35 adversarial + 40 holdout samples merged
- 75 total evasion technique samples

### Test optimization
- Test time: 40min  ~2min
- 807 tests, 0 failures

### Docs
- All documentation updated with new metrics
- Browser-only attacks documented as out-of-scope
