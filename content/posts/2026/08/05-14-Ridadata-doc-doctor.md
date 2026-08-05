---
title: VeriFenceAction
date: 2026-08-05 14:54:13 +00:00
tags:
  - Ridadata
  - GitHub Actions
draft: false
repo: https://github.com/Ridadata/doc-doctor
marketplace: https://github.com/marketplace/actions/verifenceaction
version: v1.0.2
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
actionSummary: |
  Doc Doctor is a GitHub Action that automatically executes and verifies code snippets marked with `verify` in Markdown files. It checks for broken code and posts a PR comment if any snippet fails, ensuring documentation examples remain accurate. The action supports various programming languages and provides options to set timeouts and specify which files to scan.
---


Version updated for **https://github.com/Ridadata/doc-doctor** to version **v1.0.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/verifenceaction) to find the latest changes.

## Action Summary

Doc Doctor is a GitHub Action that automatically executes and verifies code snippets marked with `verify` in Markdown files. It checks for broken code and posts a PR comment if any snippet fails, ensuring documentation examples remain accurate. The action supports various programming languages and provides options to set timeouts and specify which files to scan.

## What's Changed

Initial public release.

- Extracts `lang verify` code blocks from Markdown and executes them (Node, Python, Bash runtimes)
- Optional output-diffing via an adjacent `text expect` block
- Posts one summarized PR comment, updated in place on re-runs

Pin to `Ridadata/doc-doctor@v1` (tracks future v1.x patches) or `@v1.0.2` (fixed).
