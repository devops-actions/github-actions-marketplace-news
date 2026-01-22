---
title: Branch Narrator
date: 2026-01-22 13:42:04 +00:00
tags:
  - better-vibe
  - GitHub Actions
draft: false
repo: https://github.com/better-vibe/branch-narrator-action
marketplace: https://github.com/marketplace/actions/branch-narrator
version: v1.3.0
dependentsNumber: "?"
---


Version updated for **https://github.com/better-vibe/branch-narrator-action** to version **v1.3.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/branch-narrator) to find the latest changes.

## Action Summary

The **Branch Narrator GitHub Action** automates the analysis of pull requests by generating human-readable summaries, machine-readable artifacts, and risk assessments to improve code review processes. It supports tasks such as providing actionable PR comments, generating SARIF reports for GitHub Code Scanning, and integrating with CI pipelines for risk-based decision-making. Key capabilities include delta tracking between runs, optional merge gating based on risk thresholds, and support for AI-driven workflows and security analysis.

## Release notes

### Minor Changes

- fed7440: Use pr-body CLI command for human-readable output, separate from machine-readable artifacts

  **Architecture changes:**

  - **Human-readable output**: Step summary and PR comments now use the  CLI command, which is optimized for human reviewers
  - **Machine-readable artifacts**:  and  remain unchanged for CI pipelines, coding agents, and downstream workflows
  - **Simplified rendering**: Removed custom markdown rendering in favor of CLI-generated output

  **New features:**

  - **Version resolution**: The action now resolves and displays the actual branch-narrator version (e.g.,  resolves to )
  - **Commit range links**: PR comments and step summary include clickable compare links
  - **Enhanced pipeline logs**: Structured summary box with version, scores, flags, findings, and delta info

  **Removed inputs** (now handled by CLI):

  - 
  - 
  - 

  **New outputs:**

  - : Total number of findings detected
  - : Full facts JSON output as step output (with 1MB truncation handling)
  - : Full risk report JSON output as step output (with 1MB truncation handling)

  **Documentation:**

  - Added  environment variable requirement to all examples
  - Updated documentation to reflect new architecture
  - Added examples for using JSON outputs in downstream workflow steps

### Patch Changes

- e821b9d: fix range commit link
