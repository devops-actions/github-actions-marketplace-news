---
title: Sentinel Scan (MCP/LLM security)
date: 2026-08-25 05:51:54 +00:00
tags:
  - Ventrova
  - GitHub Actions
draft: false
repo: https://github.com/Ventrova/sentinel-scan-cli
marketplace: https://github.com/marketplace/actions/sentinel-scan-mcp-llm-security
version: v1.4.2
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This GitHub Action automates security audits of LLM apps and MCP servers by scanning them for security issues using a 15-attack prompt-injection suite. It detects vulnerabilities in endpoint policies, tool descriptions, and manifest files, ensuring compliance with OWASP guidelines. The action is designed to be user-friendly and requires minimal setup, with options for both local testing (`--demo`) and real-world scans against the target endpoint.
---


Version updated for **https://github.com/Ventrova/sentinel-scan-cli** to version **v1.4.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sentinel-scan-mcp-llm-security) to find the latest changes.

## Action Summary

This GitHub Action automates security audits of LLM apps and MCP servers by scanning them for security issues using a 15-attack prompt-injection suite. It detects vulnerabilities in endpoint policies, tool descriptions, and manifest files, ensuring compliance with OWASP guidelines. The action is designed to be user-friendly and requires minimal setup, with options for both local testing (`--demo`) and real-world scans against the target endpoint.

## What's Changed

Marketplace listing fix: shortened the GitHub Action description to under 125 chars so `Ventrova/sentinel-scan-cli` can be published to the GitHub Marketplace. No change to the scanner or action behavior; same 15-attack corpus + MCP manifest heuristics as v1.4.1. Install: `npx sentinel-scan-cli` / `pip install sentinel-scan-cli` / `uses: Ventrova/sentinel-scan-cli@v1.4.2`.
