---
title: agent-guard-pr-scan
date: 2026-05-26 22:51:45 +00:00
tags:
  - tasnuvaleeya
  - GitHub Actions
draft: false
repo: https://github.com/tasnuvaleeya/agent-guard
marketplace: https://github.com/marketplace/actions/agent-guard-pr-scan
version: v0.1.5
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/tasnuvaleeya/agent-guard** to version **v0.1.5**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-guard-pr-scan) to find the latest changes.

## Action Summary

Agent-Guard is a GitHub Action designed to enhance the safety and reliability of AI-assisted coding workflows by scanning pull request diffs for common risks such as leaked secrets, hallucinated imports, unsafe code patterns, missing tests, and infrastructure changes. It automates risk analysis, providing a detailed report with severity levels and an aggregate risk score, helping teams identify and address potential issues before merging. The action is lightweight, fast, and runs deterministically without requiring large language models (LLMs).

## What's Changed

Cosmetic release renaming the Marketplace listing from `ag-scan` to `agent-guard-pr-scan` to bypass GitHub's stale Marketplace state. Nothing else changes.

### Install (unchanged)
```bash
pip install ag-scan
```

```yaml
- uses: tasnuvaleeya/agent-guard@v0.1.5
```

### Docs
- [README](https://github.com/tasnuvaleeya/agent-guard#readme)
- [User Manual](https://github.com/tasnuvaleeya/agent-guard/blob/main/docs/USER_MANUAL.md)
