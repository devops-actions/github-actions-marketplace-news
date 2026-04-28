---
title: vibe-hardening
date: 2026-04-28 06:11:35 +00:00
tags:
  - vibe-hardening
  - GitHub Actions
draft: false
repo: https://github.com/vibe-hardening/cli
marketplace: https://github.com/marketplace/actions/vibe-hardening
version: v1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/vibe-hardening/cli** to version **v1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vibe-hardening) to find the latest changes.

## Action Summary

Vibe Hardening is a security scanning tool designed to identify vulnerabilities, misconfigurations, and secrets in AI-generated JavaScript, TypeScript, and Python codebases. It automates the detection of issues such as hardcoded sensitive keys, injection risks, CORS misconfigurations, weak authentication practices, and supply chain vulnerabilities. By integrating with CI pipelines or running locally, it provides an efficient way to improve code security in projects created with AI coding tools.

## What's Changed

  First Marketplace release. The action wraps `npx vibe-hardening` so workflows can run the same scan that powers the
  CLI.

  ## What's in v1

  - 48 rules across secrets / injection / auth / network / Python / supply-chain
  - 12 secret detectors (OpenAI, Anthropic, Stripe, GitHub, Slack, SendGrid, Notion, Twilio, Google, AWS, JWT, generic
  DB URL)
  - 9 live key verifiers (`verify: true`, requires `own: true`)
  - `changed-only: origin/${{ github.base_ref }}` for 10× faster PR scans
  - JSON / HTML output for CI artifacts
  - Order-of-magnitude abuse-cost estimates per leaked key

  ## Quick start

  ```yaml
  - uses: actions/checkout@v4
    with:
      fetch-depth: 0
  - uses: vibe-hardening/cli@v1
    with:
      severity: high
      changed-only: origin/${{ github.base_ref }}

  MIT licensed. CLI: https://www.npmjs.com/package/vibe-hardening
