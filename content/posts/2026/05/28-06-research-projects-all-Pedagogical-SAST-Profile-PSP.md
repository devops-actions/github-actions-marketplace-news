---
title: Pedagogical SAST Profile (PSP)
date: 2026-05-28 06:43:11 +00:00
tags:
  - research-projects-all
  - GitHub Actions
draft: false
repo: https://github.com/research-projects-all/Pedagogical-SAST-Profile-PSP
marketplace: https://github.com/marketplace/actions/pedagogical-sast-profile-psp
version: v2.0.1
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/research-projects-all/Pedagogical-SAST-Profile-PSP** to version **v2.0.1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pedagogical-sast-profile-psp) to find the latest changes.

## Action Summary

The **Pedagogical SAST Profile (PSP) Action** is a GitHub Action designed to help beginner-to-intermediate developers learn secure coding practices by providing curated, framework-specific static application security testing (SAST) rules for Python (Django) and Java (Spring). It solves common educational challenges by reducing noise from irrelevant alerts, focusing on actionable security concepts aligned with the OWASP Top 10, and limiting scans to code learners can modify. Key capabilities include automatic language detection, exclusion of non-authored code, and simplified, pedagogically-scoped security feedback.

## What's Changed


```
name: PSP Pedagogical Security Scan

on:
  push:
    branches: [main, master, develop]
  pull_request:
    branches: [main, master]

jobs:
  psp:
    name: Run Pedagogical SAST Profile
    runs-on: ubuntu-latest
    
    # REQUIRED: Allows the action to upload SARIF to GitHub Code Scanning
    permissions:
      contents: read
      security-events: write
    
    steps:
      - name: Checkout repository
        uses: actions/checkout@v4

      - name: Pedagogical SAST Profile (PSP)
        uses: research-projects-all/Pedagogical-SAST-Profile-PSP@v2.0.0
        with:
          framework: auto        # Detects Java→Spring, Python→Django automatically
          scan-path: .           # Scan entire repo (change to ./src if needed)
          output-format: sarif   # Required for GitHub Security tab integration
          output-file: psp-results.sarif
          fail-on-finding: false # Set to 'true' to block PRs on ERROR severity
```

