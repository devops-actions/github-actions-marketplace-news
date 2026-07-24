---
title: MCP Test Harness
date: 2026-07-24 13:48:16 +00:00
tags:
  - vaquarkhan
  - GitHub Actions
draft: false
repo: https://github.com/vaquarkhan/mcp-test-harness
marketplace: https://github.com/marketplace/actions/mcp-test-harness
version: v3.0.9
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The MCP Test Harness is a CI tool that automates and tests the correctness of MCP servers. It helps teams ensure their AI server features do not break silently and provides evidence of compliance with standards like JUnit, SARIF, and HTML reports. By using this action, developers can quickly verify the reliability and performance of their MCP servers before they are deployed, reducing costs associated with quality assurance and improving overall trust in their codebase.
---


Version updated for **https://github.com/vaquarkhan/mcp-test-harness** to version **v3.0.9**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mcp-test-harness) to find the latest changes.

## Action Summary

The MCP Test Harness is a CI tool that automates and tests the correctness of MCP servers. It helps teams ensure their AI server features do not break silently and provides evidence of compliance with standards like JUnit, SARIF, and HTML reports. By using this action, developers can quickly verify the reliability and performance of their MCP servers before they are deployed, reducing costs associated with quality assurance and improving overall trust in their codebase.

## What's Changed

## mcp-test-harness 3.0.9

CRA evidence packaging release: SBOM on publish, VDP security policy, optional `--cra-output` CRA reporter, and version alignment across core + 17 vendor shims.

### Publish
- Core + Docker: triggered by this tag
- Vendor shims: `publish-packages` workflow_dispatch from main
