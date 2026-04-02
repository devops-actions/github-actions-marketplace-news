---
title: PromptShield AI Security
date: 2026-04-02 06:32:34 +00:00
tags:
  - Zero-Harm-AI-LLC
  - GitHub Actions
draft: false
repo: https://github.com/Zero-Harm-AI-LLC/promptshield
marketplace: https://github.com/marketplace/actions/promptshield-ai-security
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Zero-Harm-AI-LLC/promptshield** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/promptshield-ai-security) to find the latest changes.

## Action Summary

PromptShield AI Security is a GitHub Action and CLI tool designed to detect AI-specific security risks in pull requests by analyzing code changes for vulnerabilities such as prompt injection risks, secrets exposure, PII leaks, unsafe LLM usage, and sensitive data handling. It automates security scanning, provides actionable feedback through GitHub Actions annotations, and generates outputs in multiple formats (e.g., JSON, Markdown, SARIF). This tool streamlines AI-related code reviews, enhancing security and reducing the risk of propagating vulnerabilities into production.

## What's Changed

## PromptShield AI Security v1.0.0

PromptShield AI Security is a GitHub Action for detecting AI-specific security risks in pull requests.

This first stable release includes:
- detection for prompt injection risk in LLM-related code
- detection for prompt logging, request body logging, and prompt concatenation risks
- detection for secrets, PII, and sensitive data exposure in LLM flows
- detection for unsafe tool usage and unrestricted tool selection
- JSON, Markdown, GitHub annotation, and SARIF output formats
- reviewer-style pull request feedback through GitHub Actions workflows
- composite GitHub Action packaging for Marketplace usage
- test coverage for diff parsing, detector execution, output generation, and publish readiness

### Install

Use PromptShield AI Security from GitHub Actions:

```yaml
- uses: Zero-Harm-AI-LLC/promptshield@v1
