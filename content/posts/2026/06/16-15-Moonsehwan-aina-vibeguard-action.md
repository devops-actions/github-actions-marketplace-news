---
title: VibeGuard Security Scanner
date: 2026-06-16 15:51:51 +00:00
tags:
  - Moonsehwan
  - GitHub Actions
draft: false
repo: https://github.com/Moonsehwan/aina-vibeguard-action
marketplace: https://github.com/marketplace/actions/vibeguard-security-scanner
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Moonsehwan/aina-vibeguard-action** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vibeguard-security-scanner) to find the latest changes.

## What's Changed

## VibeGuard v1.9.2

AST-based security scanner for AI-generated Python code.
**May flag false positives. Never misses a real one.**

### What's new
- `--agent-friendly` flag: AI-optimized reports with before/after code
- `stats` command: per-pattern FP statistics  
- `feedback` command: report false positives

### Real findings
- serena (25K ⭐): COMMAND_INJECTION in agent.py:1222
- aider (27K ⭐): COMMAND_INJECTION via shell=True
- cursor-free-vip: INSECURE_RANDOM for password generation

35 true positives. 0 false positives.

### Install
pip install aina-vibeguard

### Quick start
aina-vibeguard scan .
