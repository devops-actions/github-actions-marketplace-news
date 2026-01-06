---
title: brandOptics AI Neural Nexus
date: 2026-01-06 13:17:02 +00:00
tags:
  - brandOptics
  - GitHub Actions
draft: false
repo: https://github.com/brandOptics/brandOptics_ai_review_bot_action
marketplace: https://github.com/marketplace/actions/brandoptics-ai-neural-nexus
version: v3.9.0
dependentsNumber: "0"
---


Version updated for **https://github.com/brandOptics/brandOptics_ai_review_bot_action** to version **v3.9.0**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/brandoptics-ai-neural-nexus) to find the latest changes.

## Action Summary

BrandOptics Neural Nexus is an advanced GitHub Action designed to automate comprehensive code reviews for engineering teams. It leverages a hybrid neuro-symbolic AI engine to combine static analysis with intelligent reasoning, enabling it to detect syntax errors, analyze architectural integrity, and identify security vulnerabilities. The action automates tasks such as code refactoring, dependency tracing, duplication detection, and enforcing clean code standards, effectively simulating the workflow of a senior software architect to improve code quality and reduce manual review effort.

## Release notes

## 🛡️ The "Gatekeeper" Update

This release introduces a strict **3-Tier Gatekeeper Policy** to eliminate noise and ensure only critical issues block the merge.

### 🚀 Major Features
*   **3-Tier Policy Engine**:
    *   **🔴 Tier 1 (Blocker)**: Security, Secrets, Syntax Errors, Hardcoded URLs, `console.log`.
    *   **🟡 Tier 2 (Warning)**: Complexity (>20), Naming Conventions, Duplication.
    *   **🔇 Tier 3 (Ignored)**: Subjective Style, Formatting, Clean Code nitpicks.
*   **Developer Disclaimer**: Added a footer to every review empowering developers to use their own judgment on warnings.
*   **Advisory Status Checks**: Status checks now explicitly tell the Human Reviewer whether to Block or Proceed.
*   **Faulty Logic Only**: The AI is now prohibited from suggesting logic changes unless the code is objectively broken or insecure.

### ⚠️ Breaking Changes
*   **Strict Blocking**: PRs will now **FAIL** (Block Merge) if any Tier 1 issue is found.
*   **Linter Enforcement**: Lint errors are now treated as High Severity Blockers.
```,
