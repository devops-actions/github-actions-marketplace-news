---
title: shipready Quality Gate
date: 2026-07-13 11:46:32 +00:00
tags:
  - formalness
  - GitHub Actions
draft: false
repo: https://github.com/formalness/shipready
marketplace: https://github.com/marketplace/actions/shipready-quality-gate
version: v1.5.1
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  **Summary:**
  
  shipready is a CLI tool designed to help developers identify and fix common issues in AI-generated code projects. It scans the project for hardcoded secrets, missing `.env.example` files, debug logs, unfinished TODOs, and broken repo hygiene. The tool provides an automated way to check and optionally fix these issues before releasing the application. shipready is particularly useful for AI coding tools, as it detects common pitfalls that can be harmful to security and maintainability once deployed.
---


Version updated for **https://github.com/formalness/shipready** to version **v1.5.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/shipready-quality-gate) to find the latest changes.

## Action Summary

**Summary:**

shipready is a CLI tool designed to help developers identify and fix common issues in AI-generated code projects. It scans the project for hardcoded secrets, missing `.env.example` files, debug logs, unfinished TODOs, and broken repo hygiene. The tool provides an automated way to check and optionally fix these issues before releasing the application. shipready is particularly useful for AI coding tools, as it detects common pitfalls that can be harmful to security and maintainability once deployed.

## What's Changed

New: BENCHMARK.md - head-to-head vs gitleaks v8.24.3 on a 7-leak/10-bait corpus: shipready 7/7 with 0 error-level false positives, gitleaks 4/7 with 1. Full methodology, fairness notes, and reproduction steps included. The benchmark also found two real gaps, fixed here: committed .env.backup files were silently skipped by a too-broad .env* exemption (now scanned), and unquoted dotenv-style assignments (JWT_SECRET=c8f3... without quotes) were missed (now caught). 181 tests.
