---
title: DocPulse — Self-Healing Docs
date: 2026-06-12 15:17:26 +00:00
tags:
  - YoniRaviv
  - GitHub Actions
draft: false
repo: https://github.com/YoniRaviv/DocPulse
marketplace: https://github.com/marketplace/actions/docpulse-self-healing-docs
version: v1.0.1
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/YoniRaviv/DocPulse** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/docpulse-self-healing-docs) to find the latest changes.

## What's Changed

Marketplace listing release. Functionally identical to v1.0.0 — the only change is a globally-unique action name (**DocPulse — Self-Healing Docs**) required for the GitHub Actions Marketplace. The repo slug, `uses: YoniRaviv/DocPulse@v1`, README, and the GHCR image are unchanged.

**Docs that stay in sync with the heartbeat of the codebase.**

DocPulse detects documentation sections invalidated by a pull request's code changes and commits surgical fixes directly onto the PR branch. A deterministic layer (tree-sitter chunking → code↔doc link graph → diff-driven suspect selection) decides *what to check*; a bounded agentic layer (an LLM verifier with read/grep tools, then a style-preserving repairer with a validation pass) decides *stale or not, and how to fix it*.

## Usage
```yaml
- uses: YoniRaviv/DocPulse@v1
  with:
    mode: repair
  env:
    ANTHROPIC_API_KEY: ${{ secrets.ANTHROPIC_API_KEY }}
    OPENAI_API_KEY: ${{ secrets.OPENAI_API_KEY }}
    GH_TOKEN: ${{ secrets.GITHUB_TOKEN }}
    DOCPULSE_PR_NUMBER: ${{ github.event.pull_request.number }}
```
