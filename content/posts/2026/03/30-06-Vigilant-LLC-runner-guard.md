---
title: Runner Guard
date: 2026-03-30 06:14:56 +00:00
tags:
  - Vigilant-LLC
  - GitHub Actions
draft: false
repo: https://github.com/Vigilant-LLC/runner-guard
marketplace: https://github.com/marketplace/actions/runner-guard
version: v2.5.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/Vigilant-LLC/runner-guard** to version **v2.5.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/runner-guard) to find the latest changes.

## Action Summary

Runner Guard is a security tool designed to perform static taint analysis on GitHub Actions workflows, identifying vulnerabilities that could enable source-to-sink attacks, such as injection paths from untrusted inputs to sensitive operations. It automates the detection of misconfigurations, AI configuration injection attacks, and supply chain threats like invisible Unicode payloads, helping developers secure CI/CD pipelines against advanced exploitation techniques. This action addresses critical risks in repositories triggered by privileged workflows, ensuring protection from credential theft, malicious code execution, and other threats.

## What's Changed

### What's new

- **Docker container skip**: The engine no longer attempts to pin or flag `docker://` container references, which use content-addressed digests (sha256) and are already immutable.
