---
title: GitCheck Security Scanner
date: 2026-05-16 13:57:12 +00:00
tags:
  - Th3C0d3Mast3r
  - GitHub Actions
draft: false
repo: https://github.com/Th3C0d3Mast3r/gitcheck
marketplace: https://github.com/marketplace/actions/gitcheck-security-scanner
version: v1.2.8
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/Th3C0d3Mast3r/gitcheck** to version **v1.2.8**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gitcheck-security-scanner) to find the latest changes.

## Action Summary

Git-Check is a GitHub Actions-based tool designed to analyze `git diff` outputs for security risks, helping repository maintainers quickly detect suspicious, malicious, or unexpected code changes. By leveraging multi-level detection techniques such as regex, rule-based analysis, and abstract syntax trees (AST), it automates and streamlines the process of identifying potential vulnerabilities in pull requests. It can operate within GitHub workflows or in offline environments, providing an additional layer of security for modern repositories.

## What's Changed

A Stable Working Workflow that can be used. Works properly.

To use the same, a simpler way is:-
- Make a file at `.github/workflows/git-check.yaml`
- There, write the following code:-
```yml
name: Security Analysis

on:
  push:
    branches: [ "main" ]
  pull_request:
    branches: [ "main" ]

jobs:
  scan:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout code
        uses: actions/checkout@v4

      - name: GitCheck Security Scan
        uses: docker://dcodemaster/gitcheck:latest
        with:
          report_mode: '1'
```

This should work, and provide the security to ur repo (more changes to come in the further versions)
