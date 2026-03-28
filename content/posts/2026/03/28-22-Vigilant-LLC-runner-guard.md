---
title: Runner Guard
date: 2026-03-28 22:12:46 +00:00
tags:
  - Vigilant-LLC
  - GitHub Actions
draft: false
repo: https://github.com/Vigilant-LLC/runner-guard
marketplace: https://github.com/marketplace/actions/runner-guard
version: v2.4.8
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/Vigilant-LLC/runner-guard** to version **v2.4.8**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/runner-guard) to find the latest changes.

## Action Summary

Runner Guard is a security-focused GitHub Action designed to identify and mitigate source-to-sink vulnerabilities in CI/CD pipelines, particularly those stemming from misconfigured workflows in GitHub Actions. It automates static taint analysis to detect injection paths that could allow malicious actors to exploit privileged contexts, exfiltrate secrets, or execute unauthorized code. Additionally, it provides advanced scanning capabilities to uncover supply chain attacks, including hidden Unicode payloads and AI-driven configuration injection threats.

## Release notes

### What's new

- **RGS-019**: New advisory rule flags step output expressions interpolated in run blocks for manual review
- **Parser fix**: YAML block scalar parsing handles under-indented lines (literal newlines, heredocs)
