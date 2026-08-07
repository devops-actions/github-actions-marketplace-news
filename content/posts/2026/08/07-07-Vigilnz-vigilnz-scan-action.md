---
title: Vigilnz Security Scan
date: 2026-08-07 07:11:48 +00:00
tags:
  - Vigilnz
  - GitHub Actions
draft: false
repo: https://github.com/Vigilnz/vigilnz-scan-action
marketplace: https://github.com/marketplace/actions/vigilnz-security-scan
version: v1.2.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
actionSummary: |
  The Vigilnz Security Scan Action automates security scans for applications and repositories using Vigilnz's API. It supports SCA, SBOM, SAST, IAC SCAN, SECRET SCAN, DAST, and CONTAINER SCAN. The action makes it easy to integrate security scanning into GitHub workflows by generating an API key, storing it securely in secrets, and adding the action to the workflow configuration.
---


Version updated for **https://github.com/Vigilnz/vigilnz-scan-action** to version **v1.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vigilnz-security-scan) to find the latest changes.

## Action Summary

The Vigilnz Security Scan Action automates security scans for applications and repositories using Vigilnz's API. It supports SCA, SBOM, SAST, IAC SCAN, SECRET SCAN, DAST, and CONTAINER SCAN. The action makes it easy to integrate security scanning into GitHub workflows by generating an API key, storing it securely in secrets, and adding the action to the workflow configuration.

## What's Changed

- Add api-client.js for handling Vigilnz REST API interactions including authentication, scan submission, status polling, and result summary retrieval.
- Introduce constants.js for shared constants across the action, including API URLs and timeout settings.
- Create inputs.js to read and normalize action inputs, including environment resolution and credential handling.
- Develop report.js to publish action outputs and render job summary tables for scan results.
- Add wait-for-scans.js to poll scan targets until completion, aggregate results, and evaluate severity gates.
