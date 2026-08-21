---
title: DeepSeek Harness for GitHub
date: 2026-08-21 14:14:55 +00:00
tags:
  - Lixiaoyiao
  - GitHub Actions
draft: false
repo: https://github.com/Lixiaoyiao/deepseek-harness-action
marketplace: https://github.com/marketplace/actions/deepseek-harness-for-github
version: v0.4.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action automates the process of using DeepSeek Harness to review pull requests, diagnose issues based on failed CI runs, and fix code or turn issues into pull requests. It integrates with GitHub events and leverages the capabilities of DeepSeek Harness to enhance collaboration and improve code quality in repositories.
---


Version updated for **https://github.com/Lixiaoyiao/deepseek-harness-action** to version **v0.4.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/deepseek-harness-for-github) to find the latest changes.

## Action Summary

This GitHub Action automates the process of using DeepSeek Harness to review pull requests, diagnose issues based on failed CI runs, and fix code or turn issues into pull requests. It integrates with GitHub events and leverages the capabilities of DeepSeek Harness to enhance collaboration and improve code quality in repositories.

## What's Changed

DeepSeek Harness Action v0.4.0 connects the v0.3 multi-turn Agent loop to DeepSeek Harness's official MCP, Profile, Bundle, Cordis Plugin, and ToolRuntime extension mechanisms while preserving the Controller-owned GitHub write boundary.

## Highlights

- Upgrades the exact DeepSeek Harness runtime pin from `0.1.0-rc.6` to `0.1.0-rc.8`; all DSH-family dependencies remain exact, and the Action now runs on Node 24.
- Adds official `@deepseek-ai/dsh-mcp-client` integration for `stdio` and Streamable HTTP transports.
- Adds Controller-validated official DSH Profile generation and allowlisted, immutable Bundle/Plugin loading; dynamic installation remains disabled by default.
- Unifies read, workspace-write, network, timeout, output-size, per-tool, and per-owner invocation policy across controller argv tools and DSH native/MCP/plugin tools.
- Adds bounded extension provenance and receipts through `extension-profile-digest`, `tool-receipts`, and the structured result.
- Keeps the Agent without unrestricted shell, `GITHUB_TOKEN`, the real DeepSeek key, or direct commit/push/PR authority.

## Inputs and outputs

New inputs: `mcp-config`, `plugin-config`, and `allow-plugin-install`.

New outputs: `extension-profile-digest` and `tool-receipts`.

## Compatibility and security

Workflows without MCP/Plugin configuration retain the v0.3 review, diagnose, fix, implement, auto, task, multi-turn, sticky-comment, and Controller-write paths. Two intentional hardenings apply: every write requires configured validation to pass, and write-task comments are deferred until validation succeeds.

An approved third-party Bundle/Plugin or stdio MCP executable is trusted worker code. ToolRuntime guards constrain model-routed calls; they do not sandbox package initialization, background work, or direct process I/O. Review and immutably pin the full dependency graph and enforce runner-level filesystem/network boundaries.

## Verification

- [Post-merge main CI](https://github.com/Lixiaoyiao/deepseek-harness-action/actions/runs/32451097249): `npm ci`, full `npm run check`, 41 test files / 360 tests, 81.02% statement coverage, deterministic `dist` gates, and Linux Docker smoke with official DSH/MCP packages at exact `0.1.0-rc.8`.
- [Core real E2E](https://github.com/Lixiaoyiao/deepseek-harness-action/actions/runs/32448590692): real DeepSeek + DSH Agent, official MCP success/denial/failure, pinned Plugin/Profile load, invalid Plugin rejection, validation failure with no GitHub write, and validated trusted-write.
- [Merged development PR #14](https://github.com/Lixiaoyiao/deepseek-harness-action/pull/14).

Full changes: https://github.com/Lixiaoyiao/deepseek-harness-action/compare/v0.3.0...v0.4.0

