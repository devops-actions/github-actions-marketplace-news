---
title: MUADDIB Scanner
date: 2026-04-04 13:40:47 +00:00
tags:
  - DNSZLSK
  - GitHub Actions
draft: false
repo: https://github.com/DNSZLSK/muad-dib
marketplace: https://github.com/marketplace/actions/muad-dib-scanner
version: v2.10.49
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/DNSZLSK/muad-dib** to version **v2.10.49**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/muad-dib-scanner) to find the latest changes.

## Action Summary

MUAD'DIB is a security-focused GitHub Action designed to detect and mitigate supply chain attacks in npm and PyPI packages. It leverages multiple parallel scanners, machine learning classifiers, deobfuscation, and sandboxing to identify known threats, suspicious behavior, and vulnerabilities before installation or during CI/CD workflows. By automating threat detection and providing detailed risk scoring, it acts as a first line of defense for developers against malicious package dependencies.

## What's Changed

Worker now starts before initial processQueue. Dedicated slot active from boot.
