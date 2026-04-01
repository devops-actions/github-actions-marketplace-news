---
title: Decoy Scan
date: 2026-04-01 13:58:30 +00:00
tags:
  - decoy-run
  - GitHub Actions
draft: false
repo: https://github.com/decoy-run/decoy-scan
marketplace: https://github.com/marketplace/actions/decoy-scan
version: v1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/decoy-run/decoy-scan** to version **v1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/decoy-scan) to find the latest changes.

## Action Summary

The `decoy-scan` GitHub Action is a security analysis tool designed to identify vulnerabilities in MCP server configurations, such as risky tools, prompt injection risks, toxic data flows, and exposed secrets. It automates security scanning, enforces customizable policies, and integrates with GitHub's Security tab to provide actionable findings, mapped to the OWASP Agentic Top 10. This action streamlines the detection of critical issues, protects against supply chain threats, and enhances CI/CD pipeline security compliance.

## What's Changed

Scan MCP server configurations for security risks in your GitHub Actions workflow.

  ## Usage

  ```yaml
  - uses: decoy-run/decoy-scan@v1

  One step. Fails the build on critical tools or prompt injection. Uploads SARIF to the GitHub Security tab.

  What it checks

  - Tool risk classification (critical/high/medium/low)
  - Prompt injection in tool descriptions
  - Toxic cross-server data flows
  - Secrets exposed in MCP config
  - Supply chain advisories
  - Input sanitization gaps
  - OWASP Agentic Top 10 mapping

  Options

  - uses: decoy-run/decoy-scan@v1
    with:
      policy: no-critical,no-poisoning,no-toxic-flows
      report: true
      token: ${{ secrets.DECOY_TOKEN }}

  What's new

  - Inline remediation recommendations on every finding
  - --fix mode with per-server remediation plan
  - GitHub Action with SARIF upload and job summary
  - Policy gate for CI/CD pipelines
