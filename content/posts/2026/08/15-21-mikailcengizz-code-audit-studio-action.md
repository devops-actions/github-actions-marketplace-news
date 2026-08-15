---
title: Code Audit Studio — AI Pull Request Review
date: 2026-08-15 21:44:54 +00:00
tags:
  - mikailcengizz
  - GitHub Actions
draft: false
repo: https://github.com/mikailcengizz/code-audit-studio-action
marketplace: https://github.com/marketplace/actions/code-audit-studio-ai-pull-request-review
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action reviews AI-assisted code from pull requests in a repository or organization using Code Audit Studio. It evaluates risks, missing tests, remediation steps, and verification details, providing a report to the job summary and as a Markdown file without modifying the PR. The action is read-only, ensuring no checkout, execution, or interaction with the repository.
---


Version updated for **https://github.com/mikailcengizz/code-audit-studio-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/code-audit-studio-ai-pull-request-review) to find the latest changes.

## Action Summary

This GitHub Action reviews AI-assisted code from pull requests in a repository or organization using Code Audit Studio. It evaluates risks, missing tests, remediation steps, and verification details, providing a report to the job summary and as a Markdown file without modifying the PR. The action is read-only, ensuring no checkout, execution, or interaction with the repository.

## What's Changed

Initial public release of Code Audit Studio pull-request risk review.

- Fetches only the current pull request diff with GitHub's runner token.
- Sends the bounded diff and minimal pull-request context to Code Audit Studio with a separate analysis token.
- Writes a cited Markdown report to the job summary and exposes its file path and highest severity as outputs.
- Supports an opt-in severity failure threshold while defaulting to advisory review.
- Rejects pull_request_target, unsafe endpoints, redirects, oversized diffs, invalid event context, and inconclusive evidence validation.
- Runs as a zero-dependency Node.js 24 Action and performs no checkout, repository code execution, telemetry, or repository writes.

Reviewed runtime artifact:

- dist/index.js size: 16,304 bytes
- SHA-256: 35a2a5d742da537fb71d6699dc484f10845951d8e2f408d3588c8adac98c2088
