---
title: Offensive360 SAST Scan
date: 2026-08-02 21:24:19 +00:00
tags:
  - offensive360
  - GitHub Actions
draft: false
repo: https://github.com/offensive360/sast-scan-action
marketplace: https://github.com/marketplace/actions/offensive360-sast-scan
version: v1.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action automates a full Offensive360 SAST scan on every push or pull request. It runs deep taint and data-flow analysis across 60+ languages, providing SARIF reports for the GitHub code scanning tab and a severity gate for pipeline failures. The action is free for open source projects and supports various scan types such as dependency scanning, malware detection, and license compliance.
---


Version updated for **https://github.com/offensive360/sast-scan-action** to version **v1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/offensive360-sast-scan) to find the latest changes.

## Action Summary

This GitHub Action automates a full Offensive360 SAST scan on every push or pull request. It runs deep taint and data-flow analysis across 60+ languages, providing SARIF reports for the GitHub code scanning tab and a severity gate for pipeline failures. The action is free for open source projects and supports various scan types such as dependency scanning, malware detection, and license compliance.

## What's Changed

First Marketplace release of the Offensive360 SAST scan action.

- Full static application security scan (60+ languages, taint/data-flow analysis) on every push or PR
- SARIF 2.1.0 output — findings land in the GitHub code scanning tab with file/line, impact, and remediation guidance
- Severity gate: fail the job on findings at or above a threshold (`fail-on: high` by default)
- Optional dependency (SCA), malware/binary, and license scans
- Outputs for downstream steps: total/critical/high/medium/low counts, scan status, SARIF path
- GitLab CI template included (`templates/gitlab-ci.yml`)
- Clear errors for auth failures, concurrent-scan conflicts (409), and proxy timeouts

Free for open source: public repos can request a scan token at
https://offensive360.com/free-for-open-source/

