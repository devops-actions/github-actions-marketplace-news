---
title: Runner Guard
date: 2026-03-29 04:39:12 +00:00
tags:
  - Vigilant-LLC
  - GitHub Actions
draft: false
repo: https://github.com/Vigilant-LLC/runner-guard
marketplace: https://github.com/marketplace/actions/runner-guard
version: v2.4.9
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/Vigilant-LLC/runner-guard** to version **v2.4.9**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/runner-guard) to find the latest changes.

## Action Summary

Runner Guard is a security tool designed to analyze GitHub Actions workflows for vulnerabilities caused by misconfigured CI/CD pipelines. It automates the detection of injection paths from untrusted inputs (e.g., forked repositories or branch names) to high-risk operations, such as secret access and shell execution, as well as identifying supply chain attacks like invisible Unicode payloads. By performing static taint analysis and byte-level scanning, it mitigates risks of credential theft, repository compromise, and AI-driven attacks in automated workflows.

## What's Changed

### What's new

- **Parser fix**: Handle standalone carriage return characters and YAML control characters that appear in workflow files with Windows paths or mixed line endings. Previously these caused parse failures on large complex workflow files.
