---
title: Trace Check
date: 2026-04-26 13:38:16 +00:00
tags:
  - usercodeX-creator
  - GitHub Actions
draft: false
repo: https://github.com/usercodeX-creator/trace-action
marketplace: https://github.com/marketplace/actions/trace-check
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/usercodeX-creator/trace-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/trace-check) to find the latest changes.

## Action Summary

The **Trace Action** is a static analysis tool designed to detect and report AI-specific code issues, such as hallucinated imports, credential leaks, and silent exceptions, during continuous integration (CI) workflows. It automates the scanning of code for 24 known failure patterns unique to AI-generated code, posting summary comments on pull requests and optionally uploading results to GitHub Code Scanning. Key capabilities include configurable severity thresholds, PR blocking, and seamless integration without the need for additional installation or tokens.

## What's Changed

First release of `usercodeX-creator/trace-action`.

A composite GitHub Action that runs [Trace](https://tracecheck.dev) — a
static analyzer for AI-generated code — on your repository in CI.

## What it does

- Runs `npx trace-core@latest` on a checked-out repo
- Converts JSON output to SARIF 2.1.0 for GitHub Code Scanning
- Posts a one-comment summary on each PR (idempotent)
- Surfaces detections inline on changed lines via Code Scanning

## Quick start

```yaml
- uses: usercodeX-creator/trace-action@v1
  with:
    path: src/
```

That's it. No install, no token, no Docker.

## Outputs

`detection-count`, `critical-count`, `high-count`, `medium-count`,
`low-count`, `grade` (A–F), `summary-markdown`, `sarif-path`,
`json-path`.

See the [README](https://github.com/usercodeX-creator/trace-action/blob/v1.0.0/README.md)
for full input/output reference and example workflows.

## Detectors

Trace v0.7.0 ships 24 detectors across Python, JavaScript, TypeScript,
Go, Rust, and Ruby. Includes hallucinated dependencies, credential
leaks, insecure RNG, silent exceptions, fake type-safety, dynamic eval,
and meaningless tests.
