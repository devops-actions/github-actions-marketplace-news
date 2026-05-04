---
title: Code-Shamer (Clean Code Enforcer)
date: 2026-05-04 06:28:14 +00:00
tags:
  - cs-2526-grupo-1
  - GitHub Actions
draft: false
repo: https://github.com/cs-2526-grupo-1/code-shamer
marketplace: https://github.com/marketplace/actions/code-shamer-clean-code-enforcer
version: v2.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/cs-2526-grupo-1/code-shamer** to version **v2.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/code-shamer-clean-code-enforcer) to find the latest changes.

## Action Summary

The **Code-Shamer Custom Action** is a GitHub Action designed to enforce Python code quality by running static analysis with `flake8`. It automates the identification of style violations, unused variables, and high cyclomatic complexity, failing the build if issues are found. Additionally, it notifies and publicly shames the commit author in a specified Telegram chat, promoting accountability for clean code practices.

## What's Changed

## Clean Code Enforcer with Telegram Integration

Code-Shamer is a Composite GitHub Action designed to enforce Python code quality standards in your CI/CD pipeline. It runs strict static analysis and automatically notifies your team via Telegram if any code smells, complexity limits, or style violations are detected.

*Key Features*:
- Static Analysis: Uses flake8 to detect PEP 8 violations, syntax errors, and unused variables.

- Complexity Control: Enforces a maximum cyclomatic complexity of 10 to prevent unmaintainable code.

- Automated Alerts: Sends real-time failure logs (up to 15 lines) directly to a Telegram chat, identifying the author of the failing commit.

*Usage:*
Add the following step to your .github/workflows/main.yml file. Make sure to define the required secrets in your repository settings.
``` yaml
- name: Run Code-Shamer
        uses: cs-2526-grupo-1/code-shamer@v2.0
        with:
          telegram_token: ${{ secrets.TELEGRAM_TOKEN }}
          telegram_chat_id: ${{ secrets.TELEGRAM_CHAT_ID }}
```
