---
title: Fragile — Codebase Risk Analysis
date: 2026-04-08 22:08:21 +00:00
tags:
  - patchwork-eng
  - GitHub Actions
draft: false
repo: https://github.com/patchwork-eng/fragile
marketplace: https://github.com/marketplace/actions/fragile-codebase-risk-analysis
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/patchwork-eng/fragile** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fragile-codebase-risk-analysis) to find the latest changes.

## Action Summary

Fragile is a GitHub Action that analyzes your codebase to identify high-risk, load-bearing files based on change frequency, dependency complexity, and test coverage gaps. It automates the process of flagging these files and uses AI to generate plain-English explanations of why they are risky, helping teams prioritize code review and maintenance efforts. This tool addresses the challenge of managing technical debt and mitigating potential issues in critical, under-documented, or highly complex areas of the codebase.

## What's Changed

Find the files you're afraid to touch.

Fragile analyzes your git history and file references to surface load-bearing, undocumented code — then explains in plain English why each file is risky.

- Risk scoring: change frequency, reference count, test coverage gap
- Generates FRAGILE.md committed to your repo
- Supports JS/TS, Python, Ruby, Go
- BYOK — your OpenAI key, runs in your workflow
- Free for public repos
