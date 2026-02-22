---
title: MUADDIB Scanner
date: 2026-02-22 05:49:18 +00:00
tags:
  - DNSZLSK
  - GitHub Actions
draft: false
repo: https://github.com/DNSZLSK/muad-dib
marketplace: https://github.com/marketplace/actions/muad-dib-scanner
version: v2.2.15
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/DNSZLSK/muad-dib** to version **v2.2.15**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/muad-dib-scanner) to find the latest changes.

## Action Summary

MUAD'DIB is a security-focused GitHub Action designed to detect and mitigate supply-chain threats in npm and PyPI dependencies. It combines static and dynamic analysis, behavioral anomaly detection, and deobfuscation to identify known malicious packages and suspicious patterns, enabling developers to assess risk and block threats before installation. This tool automates dependency scanning and threat response, offering a free, quick check for developers as a complement to enterprise solutions.

## Release notes

## Sprint 4  Refactoring majeur (-1382 LOC)

| Fichier | Avant | Après | Réduction |
|---------|-------|-------|-----------|
| src/index.js | 888 LOC | 421 LOC | -53% |
| src/scanner/ast.js | 1011 LOC | 96 LOC | -90% |

Nouveaux modules créés :
- src/scoring.js
- src/temporal-runner.js
- src/output-formatter.js
- src/scanner/ast-detectors.js

## Sprint 5  Performance
- Cache des listes de fichiers (memoization)
- Pré-filtre typosquat (~80% comparaisons éliminées)

## Audit complet terminé
- Note globale : 8.3/10
- 0 vulnérabilités P0
- 854 tests, 0 fail
- TPR: 91.8% | ADR: 100% (78/78)
