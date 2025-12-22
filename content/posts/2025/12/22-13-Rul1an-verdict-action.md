---
title: Verdict PR Gate
date: 2025-12-22 13:15:34 +00:00
tags:
  - Rul1an
  - GitHub Actions
draft: false
repo: https://github.com/Rul1an/verdict-action
marketplace: https://github.com/marketplace/actions/verdict-pr-gate
version: v0.1
dependentsNumber: "?"
---


Version updated for **https://github.com/Rul1an/verdict-action** to version **v0.1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/verdict-pr-gate) to find the latest changes.

## Action Summary

The **Verdict PR Gate GitHub Action** automates the evaluation of pull requests by downloading and running a specified version of the Verdict binary to perform CI validation tasks such as executing `verdict ci`, generating JUnit and SARIF reports, and optionally uploading SARIF to GitHub Code Scanning. It streamlines the process of code quality and security analysis, enabling teams to enforce standards and identify issues in a consistent and reproducible manner. Key features include support for running in deterministic replay mode, configurable strictness levels, and artifact uploads.

## Release notes

What’s included
	•	Composite action that downloads a pinned Verdict CLI release and runs verdict ci
	•	Supports replay mode via trace_file (deterministic CI)
	•	Publishes JUnit + SARIF (+ optional artifacts)

- uses: verdict-eval/action@v1
  with:
    verdict_version: v0.1.0
    config: ci-eval.yaml
    trace_file: traces/ci.jsonl
    redact_prompts: "true"
    
Notes
	•	Supports Linux/macOS runners (x86_64/aarch64)
	•	SARIF upload requires permissions: security-events: write

Breaking changes: none
