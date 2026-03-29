---
title: Runner Guard
date: 2026-03-29 08:30:39 +00:00
tags:
  - Vigilant-LLC
  - GitHub Actions
draft: false
repo: https://github.com/Vigilant-LLC/runner-guard
marketplace: https://github.com/marketplace/actions/runner-guard
version: v2.5.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/Vigilant-LLC/runner-guard** to version **v2.5.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/runner-guard) to find the latest changes.

## Action Summary

Runner Guard is a security-focused GitHub Action that performs static taint analysis on CI/CD pipeline workflows to detect source-to-sink vulnerabilities and prevent injection attacks. It identifies risks such as malicious code execution, secret exfiltration, and supply chain threats, including invisible Unicode payload techniques. By automating vulnerability scanning, it helps safeguard repositories from misconfigurations and advanced attack vectors.

## What's Changed

### What's new

- **Single-quoted expression extraction**: The engine now extracts ${{ }} expressions from inside single-quoted strings in run blocks. GitHub Actions expands these before the shell runs, so single quotes do not protect against injection. Uses bash string concatenation to safely break out of the single-quoted context.
