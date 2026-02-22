---
title: MUADDIB Scanner
date: 2026-02-22 21:14:39 +00:00
tags:
  - DNSZLSK
  - GitHub Actions
draft: false
repo: https://github.com/DNSZLSK/muad-dib
marketplace: https://github.com/marketplace/actions/muad-dib-scanner
version: v2.2.22
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/DNSZLSK/muad-dib** to version **v2.2.22**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/muad-dib-scanner) to find the latest changes.

## Action Summary

MUAD'DIB is a security scanning GitHub Action designed to detect and analyze threats in npm and PyPI dependencies. It combines static and dynamic analysis, deobfuscation, behavioral anomaly detection, and other advanced techniques to identify known malicious packages and suspicious patterns, providing risk scores and actionable guidance for mitigation. This tool automates pre-installation scans, enhances supply chain security, and serves as a free, lightweight complement to enterprise-grade security solutions.

## Release notes

## Critical Fix

- module-graph.js scannait .muaddib-cache/benign-tarballs/ (40K fichiers) causant un freeze infini
- Utilise maintenant EXCLUDED_DIRS partagé au lieu d'une liste hardcodée
- Temps de scan : infini  ~11 secondes
- Spinner fonctionne à nouveau

## Tests
862 pass, 0 fail
