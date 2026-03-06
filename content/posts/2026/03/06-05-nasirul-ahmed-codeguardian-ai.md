---
title: CodeGuardian AI
date: 2026-03-06 05:57:11 +00:00
tags:
  - nasirul-ahmed
  - GitHub Actions
draft: false
repo: https://github.com/nasirul-ahmed/codeguardian-ai
marketplace: https://github.com/marketplace/actions/codeguardian-ai
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/nasirul-ahmed/codeguardian-ai** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/codeguardian-ai) to find the latest changes.

## Action Summary

CodeGuardian AI is a GitHub Action that automates code reviews for pull requests using OpenAI's GPT models and customizable rules. It identifies bugs, security vulnerabilities, performance issues, and code smells, providing actionable inline comments and a detailed summary directly on PRs. This tool streamlines code quality assurance by detecting complex issues, offering architecture insights, and enhancing review efficiency.

## Release notes

I am very excited to announce the first stable release of CodeGuardian AI – an intelligent code review assistant that helps you catch bugs, security issues, and code smells before they reach production or get merged.

## **Features**
 - **AI‑Powered Analysis** – Leverages OpenAI’s GPT models to understand code context and detect complex issues.
 - **Rule‑Based Checks** – Complements AI with static analysis for common patterns (console.log, hardcoded secrets, TODOs).
 - **Inline PR Comments** – Comments directly on problematic lines in the pull request diff.
 - **Summary Report** – A beautifully formatted summary comment with severity breakdown and recommendations.
 - **Highly Configurable** – Customize the model, rules, ignore patterns, and even the prompt template via .review.config.json.
 - **Local Testing** – Use act with mock files to simulate the action without hitting real GitHub or OpenAI APIs.
 
 ## **Usage**
Add the following workflow to your repository (```.github/workflows/code-review.yml```):

```yaml
name: AI Code Review
on: pull_request
jobs:
  review:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: yourusername/codeguardian-ai@v1
        with:
          github-token: ${{ secrets.GITHUB_TOKEN }}
          openai-api-key: ${{ secrets.OPENAI_API_KEY }}
```

## Configuration
Create ```.review.config.json``` in your repository root to customize behaviour. See the [README](https://github.com/nasirul-ahmed/codeguardian-ai#readme) for all options.

## Notes
This is the initial release, I would love your feedback!

The action requires an [OpenAI API key](https://platform.openai.com/api-keys) stored as a secret.

For full documentation, please refer to the [README](https://github.com/nasirul-ahmed/codeguardian-ai#readme).
