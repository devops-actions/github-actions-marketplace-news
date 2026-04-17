---
title: Run PLAYBOOK.md (native)
date: 2026-04-17 21:56:43 +00:00
tags:
  - PLAYBOOK-md
  - GitHub Actions
draft: false
repo: https://github.com/PLAYBOOK-md/playbook-native
marketplace: https://github.com/marketplace/actions/run-playbook-md-native
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/PLAYBOOK-md/playbook-native** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-playbook-md-native) to find the latest changes.

## Action Summary

The `playbook-native` GitHub Action enables the execution of `.playbook.md` files as workflow steps using a standalone Node runtime, directly interfacing with the Anthropic SDK. It automates the processing of playbook files without relying on external dependencies like `anthropics/claude-code-action`, ensuring deterministic behavior and detailed post-step logs. This action is ideal for workflows that don't require MCP-dependent directives, offering a streamlined solution for running automated tasks defined in markdown-based playbooks.

## What's Changed

First release of **playbook-native**. Executes `.playbook.md` files step-by-step via the Anthropic SDK — no dependency on `anthropics/claude-code-action`.

Pairs with [`PLAYBOOK-MD/playbook-run`](https://github.com/PLAYBOOK-MD/playbook-run) (composite variant). Inputs and outputs are identical; swap `uses:` to switch runtimes.

## When to choose playbook-native

- You want pinned wire behavior and deterministic post-step job-summary logs.
- Your playbook does not use MCP-dependent directives (`@tool(mcp:...)`, `@prompt(mcp:...)`, `@prompt(library:...)`). If it does, use `playbook-run`.
- You can't or don't want to use `anthropics/claude-code-action`.

See the [README](https://github.com/PLAYBOOK-MD/playbook-native#readme) for the capability split vs `playbook-run`, full inputs/outputs reference, and example workflows.
