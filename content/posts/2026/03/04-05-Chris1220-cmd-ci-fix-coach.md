---
title: CI Fix Coach
date: 2026-03-04 05:43:19 +00:00
tags:
  - Chris1220-cmd
  - GitHub Actions
draft: false
repo: https://github.com/Chris1220-cmd/ci-fix-coach
marketplace: https://github.com/marketplace/actions/ci-fix-coach
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/Chris1220-cmd/ci-fix-coach** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ci-fix-coach) to find the latest changes.

## Action Summary

CI Fix Coach is a GitHub Action designed to automatically diagnose CI failures and provide actionable fix instructions directly within pull requests. By analyzing error logs with Anthropic's Claude model, it eliminates the need to manually sift through logs and delivers precise, structured guidance for resolving issues. It supports various error types, including linting, test failures, build errors, and missing dependencies, streamlining the CI troubleshooting process and saving developer time.

## Release notes

CI Fix Coach analyzes your failed CI logs and posts an A-E fix guide on your PR as a comment — powered by Claude AI.

## What's included
- Diagnoses 14 failure types (ESLint, TypeScript, Docker, OOM, network, YAML errors, and more)
- Per-job analysis — each failed job gets its own diagnosis
- Auto-updates the comment instead of spamming new ones
- Open source, BYOK (bring your own Anthropic API key)

## Quick setup
Add this to your workflow YAML:

- name: CI Fix Coach
  uses: Chris1220-cmd/ci-fix-coach@v1
  with:
    anthropic-api-key: ${{ secrets.ANTHROPIC_API_KEY }}
    github-token: ${{ secrets.GITHUB_TOKEN }}
