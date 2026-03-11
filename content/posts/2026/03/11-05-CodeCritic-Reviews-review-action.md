---
title: CodeCritic Review
date: 2026-03-11 05:55:12 +00:00
tags:
  - CodeCritic-Reviews
  - GitHub Actions
draft: false
repo: https://github.com/CodeCritic-Reviews/review-action
marketplace: https://github.com/marketplace/actions/codecritic-review
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/CodeCritic-Reviews/review-action** to version **v1**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/codecritic-review) to find the latest changes.

## Action Summary

The CodeCritic Review Action is a GitHub Action that uses AI to automate code reviews for pull requests, providing a code quality score, review comments, and actionable insights. It streamlines the review process by analyzing code diffs, identifying potential issues, and delivering feedback directly on the pull request. This action helps developers save time, improve code quality, and maintain consistency in reviews, though it is intended to complement, not replace, human reviews.

## Release notes

## CodeCritic Review Action

Automatically review pull requests with AI. Add CodeCritic to your repository in 10 lines of YAML.

### What it does

- Analyzes code changes in pull requests using AI models
- Posts review results (score, summary, issues) as PR comments
- Writes results to GitHub Step Summary
- Supports manual dispatch for on-demand reviews

### Quick start

    - uses: CodeCritic-Reviews/review-action@v1
      with:
        api_key: ${{ secrets.CODECRITIC_API_KEY }}

### Features

- **Simple setup** — one step, one secret, done
- **Configurable** — control timeout, comment posting, wait behavior
- **Outputs** — use review_id, score, and status in subsequent steps (e.g. fail CI if score < 50)
- **Secure** — API key is masked in logs, GITHUB_TOKEN never leaves the runner

### Links

- [Documentation](https://code-critic.com)
- [Privacy Policy](https://code-critic.com/privacy)
- [Terms of Service](https://code-critic.com/terms)
- [Report an issue](https://github.com/CodeCritic-Reviews/review-action/issues)

> AI-generated reviews may contain inaccuracies. Always verify suggestions before applying.
