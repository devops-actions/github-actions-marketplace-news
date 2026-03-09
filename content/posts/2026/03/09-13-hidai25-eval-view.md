---
title: EvalView - AI Agent Testing
date: 2026-03-09 13:36:21 +00:00
tags:
  - hidai25
  - GitHub Actions
draft: false
repo: https://github.com/hidai25/eval-view
marketplace: https://github.com/marketplace/actions/evalview-ai-agent-testing
version: v0.4.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/hidai25/eval-view** to version **v0.4.1**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/evalview-ai-agent-testing) to find the latest changes.

## Action Summary

EvalView is an open-source framework designed to automate regression testing and behavior evaluation for AI agents. It captures and analyzes agent execution traces to detect deviations from predefined baselines, ensuring reliability and preventing performance degradation. The tool supports provider-agnostic AI testing across various platforms and APIs, making it ideal for maintaining agent quality in CI/CD workflows.

## Release notes

## What's New

### Mistral Adapter
- Direct Mistral API support via `pip install evalview[mistral]`
- Lazy import — no dependency unless you use it

### PII Evaluator
- Opt-in detection for emails, phones, SSNs, credit cards, addresses
- Luhn algorithm validation for credit cards to reduce false positives
- Enable with `checks: { pii: true }` in test YAML

### Multi-Turn HTML Reports
- Mermaid sequence diagrams showing conversation turns with tool calls
- Per-turn query and tool breakdown in the Execution Trace tab

### Security
- GitHub Action: replaced `eval $CMD` with bash arrays, moved inputs to env vars
- Mermaid diagrams: fixed autoescape breaking arrows, sanitized user content

### README
- New hero section with logo, sequence diagram screenshot, data flow diagram
- "Your data stays local" privacy explanation
- Updated model version examples to Claude 4.5/4.6

**Full Changelog**: https://github.com/hidai25/eval-view/compare/v0.4.0...v0.4.1
