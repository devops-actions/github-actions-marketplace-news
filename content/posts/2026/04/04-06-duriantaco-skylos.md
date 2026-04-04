---
title: Skylos - Python SAST, Dead Code Detection & PR Gate
date: 2026-04-04 06:10:54 +00:00
tags:
  - duriantaco
  - GitHub Actions
draft: false
repo: https://github.com/duriantaco/skylos
marketplace: https://github.com/marketplace/actions/skylos-python-sast-dead-code-detection-pr-gate
version: v4.2.1
dependentsNumber: "13"
actionType: Composite
---


Version updated for **https://github.com/duriantaco/skylos** to version **v4.2.1**.

- This action is used across all versions by **13** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skylos-python-sast-dead-code-detection-pr-gate) to find the latest changes.

## Action Summary

Skylos is an open-source static analysis tool and GitHub Action designed to detect dead code, hardcoded secrets, exploitable flows, and AI-generated security vulnerabilities in Python, TypeScript, and Go codebases. It streamlines code quality and security enforcement by automating tasks like dead code detection, AI-driven regression analysis, and CI/CD pull request gating with GitHub annotations and review comments. Its key capabilities include framework-aware analysis, integration with AI coding tools, and support for local scans, CI/CD workflows, and in-editor findings via a VS Code extension.

## What's Changed

## Changed
- `skylos agent scan` now defaults to the fast review path. Slow dead-code verification is opt-in via `--verify-dead-code`
- Agent review is more repo-aware, with better file selection and context for quality, security, and debt-style issues
- Added agent benchmarks and Codex comparison runs with token reporting

## Fixed
- Agent scans now fail cleanly on missing API keys instead of crashing
- Review output is clearer when dead-code verification is still running
- LLM provider and runtime settings now propagate correctly through the agent path
