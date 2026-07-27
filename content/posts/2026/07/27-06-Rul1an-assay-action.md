---
title: Assay - AI Agent Security
date: 2026-07-27 06:45:46 +00:00
tags:
  - Rul1an
  - GitHub Actions
draft: false
repo: https://github.com/Rul1an/assay-action
marketplace: https://github.com/marketplace/actions/assay-ai-agent-security
version: v3.0.2
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action automates the verification and linting of AI agent tests using the Assay tool. It captures test evidence as an evidence bundle, which is then verified and analyzed for compliance with policies. The action provides features such as sandbox execution and attestation signing to enhance security and review capabilities. By default, it fails a PR if there are verification errors or error-level evidence findings, making it suitable for CI workflows that run tests against AI agents calling MCP tools, HTTP APIs, or function-calling interfaces.
---


Version updated for **https://github.com/Rul1an/assay-action** to version **v3.0.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/assay-ai-agent-security) to find the latest changes.

## Action Summary

This GitHub Action automates the verification and linting of AI agent tests using the Assay tool. It captures test evidence as an evidence bundle, which is then verified and analyzed for compliance with policies. The action provides features such as sandbox execution and attestation signing to enhance security and review capabilities. By default, it fails a PR if there are verification errors or error-level evidence findings, making it suitable for CI workflows that run tests against AI agents calling MCP tools, HTTP APIs, or function-calling interfaces.

## What's Changed

v3.0.2 hardens stable Assay release resolution without broadening the action surface.

- Authenticates release lookup and resolves only stable `vX.Y.Z` releases.
- Verifies the exact installed Assay binary and isolates GitHub command-file writes.
- Adds regression coverage for release resolution and install behavior.

Use the floating major for the supported v3 line:

```yaml
- uses: Rul1an/assay-action@v3
```

This release does not add action inputs, evidence verdicts, or supported platforms.

