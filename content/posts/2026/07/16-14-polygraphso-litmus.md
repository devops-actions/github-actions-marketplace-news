---
title: Polygraph MCP gate
date: 2026-07-16 14:54:30 +00:00
tags:
  - polygraphso
  - GitHub Actions
draft: false
repo: https://github.com/polygraphso/litmus
marketplace: https://github.com/marketplace/actions/polygraph-mcp-gate
version: litmus-v0.34.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This GitHub Action automates the evaluation of MCP servers to provide a reproducible grade A-F, ensuring compliance and consistency across different environments. It allows users to quickly check, list, or request grades for servers, verify attestation proofs, and run litmus tests directly from an agent server. The action supports various inputs including npm packages, pypi packages, GitHub repository clones, MCP endpoints, and local entry files, and ensures that the target's code is executed within Docker sandboxing.
---


Version updated for **https://github.com/polygraphso/litmus** to version **litmus-v0.34.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/polygraph-mcp-gate) to find the latest changes.

## Action Summary

This GitHub Action automates the evaluation of MCP servers to provide a reproducible grade A-F, ensuring compliance and consistency across different environments. It allows users to quickly check, list, or request grades for servers, verify attestation proofs, and run litmus tests directly from an agent server. The action supports various inputs including npm packages, pypi packages, GitHub repository clones, MCP endpoints, and local entry files, and ensures that the target's code is executed within Docker sandboxing.

## What's Changed

request_grade now surfaces polygraph.so's $1 grading fee: recording a request is free, grading starts on payment (web checkout in $POLYGRAPH, or $1 USDC on Base via x402 for agents), and the grade publishes within 48h of payment. The fee buys the run, never the grade. Additive API fields — the tool keeps working against older deployments. (#118, #119)
