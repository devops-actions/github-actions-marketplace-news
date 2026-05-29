---
title: AI Agent QA Eval
date: 2026-05-29 14:47:22 +00:00
tags:
  - weiseer
  - GitHub Actions
draft: false
repo: https://github.com/weiseer/agent-eval-action
marketplace: https://github.com/marketplace/actions/ai-agent-qa-eval
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/weiseer/agent-eval-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-agent-qa-eval) to find the latest changes.

## Action Summary

The **AI Agent QA Eval GitHub Action** is designed to automate the evaluation of tool-using language model (LLM) agents by running deterministic OWASP-aligned test cases as part of a CI/CD pipeline. It identifies high-severity failures in agent behavior and fails the build if such issues are detected, ensuring robust and defensible quality gates. The action supports customizable evaluation cases, smoke testing with bundled models, and generates detailed reports for quality assurance.

## What's Changed

Composite GitHub Action: run OWASP-Agentic-aligned eval cases against your tool-using LLM agent in CI. Deterministic (no LLM-judge); fails the build on high-severity failures.

- `uses: weiseer/agent-eval-action@v1`
- Real CI gate: pass `cases` + `adapter`
- Zero-config smoke: pass `model`

Backed by agent-eval-runner (PyPI).
