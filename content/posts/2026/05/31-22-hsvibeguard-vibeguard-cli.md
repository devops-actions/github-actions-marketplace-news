---
title: VibeGuard Security Scan
date: 2026-05-31 22:16:19 +00:00
tags:
  - hsvibeguard
  - GitHub Actions
draft: false
repo: https://github.com/hsvibeguard/vibeguard-cli
marketplace: https://github.com/marketplace/actions/vibeguard-security-scan
version: v1.1.9
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/hsvibeguard/vibeguard-cli** to version **v1.1.9**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vibeguard-security-scan) to find the latest changes.

## Action Summary

VibeGuard CLI is a unified security scanner orchestrator that automates the process of running multiple security tools (e.g., Semgrep, Bandit, Trivy) on local repositories with a single command. It simplifies security workflows by consolidating and normalizing findings, providing a comprehensive security score, generating reports in various formats (e.g., SARIF, HTML), and offering AI-powered fix suggestions. Designed for both local and CI/CD environments, it eliminates the manual effort of managing individual scanners, enabling efficient and streamlined security assessments.

## What's Changed

Polish release before launch: corrected stale repo links (clone URL + SARIF informationUri now point to hsvibeguard/vibeguard-cli), and the README/About now name the core scanners explicitly. No behavior change — `@v1` consumers pick this up automatically.
