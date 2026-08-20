---
title: Agent Contract Test
date: 2026-08-20 22:37:32 +00:00
tags:
  - tangwenhai839-create
  - GitHub Actions
draft: false
repo: https://github.com/tangwenhai839-create/agent-contract-test
marketplace: https://github.com/marketplace/actions/agent-contract-test
version: v0.2.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  Agent Contract Test is a tool that automates deterministic contract testing for AI coding agents. It checks the observable result of an agent run against predefined rules, such as file changes, protected paths, and required/forbidden content. The action does not rely on another model to judge the answer and ensures reproducibility by using the same workspace and contract. The tool helps maintainers verify that changes stay within their authority and have reproducible evidence of working code.
---


Version updated for **https://github.com/tangwenhai839-create/agent-contract-test** to version **v0.2.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-contract-test) to find the latest changes.

## Action Summary

Agent Contract Test is a tool that automates deterministic contract testing for AI coding agents. It checks the observable result of an agent run against predefined rules, such as file changes, protected paths, and required/forbidden content. The action does not rely on another model to judge the answer and ensures reproducibility by using the same workspace and contract. The tool helps maintainers verify that changes stay within their authority and have reproducible evidence of working code.

## What's Changed

This evidence release publishes the first reproducible real-agent run for public issue #3. Codex CLI 0.148.0 stayed within the two allowed test files, produced zero contract findings, and passed an independent 7/7 test rerun. The repository now includes the exact contract, sanitized JSON result, SARIF output, candidate patch, limitations, and reproduction steps.\n\nAll 9 CI combinations pass across Windows, macOS, Linux and Node.js 20, 22, 24.
