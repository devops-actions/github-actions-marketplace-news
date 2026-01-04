---
title: PR Sentinel – AI & Rules Based PR Reviewer
date: 2026-01-04 13:10:27 +00:00
tags:
  - hasunB
  - GitHub Actions
draft: false
repo: https://github.com/hasunB/pr-sentinel
marketplace: https://github.com/marketplace/actions/pr-sentinel-ai-rules-based-pr-reviewer
version: v1.0.0
dependentsNumber: "?"
---


Version updated for **https://github.com/hasunB/pr-sentinel** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pr-sentinel-ai-rules-based-pr-reviewer) to find the latest changes.

## Action Summary

PR Sentinel is a GitHub Action designed to automate pull request reviews by enforcing coding standards, ensuring issue linkage, and providing AI-powered summaries of code changes. It eliminates repetitive tasks like checking PR titles and descriptions and offers formatted reports with pass/fail statuses and concise code summaries, helping teams streamline their review processes. Key features include enforcement of conventional commit standards, AI-generated change summaries, and integration with Google Gemini for zero-cost AI functionality.

## Release notes

# 🚀 PR Sentinel v1.0.0: The AI Gatekeeper is Live!
We are thrilled to announce the Initial Release of PR Sentinel—your automated teammate for cleaner, faster, and better-documented Pull Requests.

Stop wasting time nagging developers to "add a description" or "fix the title." Let the bot handle the boring checks while Google Gemini AI writes the summary for you.

## ✨ Key Features in v1.0

### 🛡️ The Gatekeeper (Rules Engine)
* **Conventional Commits Enforcement:** Automatically fails PRs with titles that don't match the standard (e.g., `feat:`, `fix:`, `chore:`).
* **Issue Link Validation:** Ensures every PR is linked to a tracking issue (e.g., `Closes #123`), preventing "orphan code."

### 🤖 The AI Scribe (Gemini Integration)
* **Auto-Summaries:** Reads the code `diff` and posts a concise, human-readable summary of *what* changed and *why*.
* **Stateless & Secure:** Uses a **Bring-Your-Own-Key (BYOK)** model. Your code goes directly from GitHub to Google's API—no middleman servers.
* **Free Tier Friendly:** Optimized to work with Google Gemini's generous free tier (15 RPM).

## 📦 How to Use

Add this step to your `.github/workflows/pr.yml` file:

Create a file at `.github/workflows/pr-sentinel.yml`:

```yaml
name: "PR Sentinel"

on:
  pull_request:
    types: [opened, edited, synchronize, reopened]

jobs:
  review:
    runs-on: ubuntu-latest
    permissions:
      contents: read
      pull-requests: write # Required to post comments
    steps:
      - name: Checkout Code
        uses: actions/checkout@v4

      - name: Run PR Sentinel
        uses: hasunB/pr-sentinel@v1
        with:
          github-token: ${{ secrets.GITHUB_TOKEN }}
          gemini-api-key: ${{ secrets.GEMINI_API_KEY }}
```

## ⚙️ Configuration Options

| Input | Description | Required | Default |
| :--- | :--- | :---: | :--- |
| `github-token` | The GitHub token to interact with the PR API. | **Yes** | `${{ github.token }}` |
| `gemini-api-key` | Google Gemini API Key. If provided, AI summary is generated. | No* | `""` |
| `model-name` | AI Model to use. Supports gemini-1.5-flash or gemini-pro. | No | `gemini-2.5-flash-lite` |

## 🤝 Contributing
Found a bug? Want to add support for OpenAI? [Open an Issue](https://www.google.com/search?q=https://github.com/hasunB/pr-sentinel/issues).

**Happy Coding!**
Hausn Akash bandara

## What's Changed
* feat: initial commit of PR Sentinel by @hasunB in https://github.com/hasunB/pr-sentinel/pull/1
* docs: Updated README.md by @hasunB in https://github.com/hasunB/pr-sentinel/pull/2
* chore: Add `src/debug.ts` and `src/list-model.ts` to `.gitignore`. by @hasunB in https://github.com/hasunB/pr-sentinel/pull/3
* chore: untrack debug files and update gitignore by @hasunB in https://github.com/hasunB/pr-sentinel/pull/4
* docs: Revamp README with a quick start guide, FAQ, and improved featu… by @hasunB in https://github.com/hasunB/pr-sentinel/pull/5

## New Contributors
* @hasunB made their first contribution in https://github.com/hasunB/pr-sentinel/pull/1

**Full Changelog**: https://github.com/hasunB/pr-sentinel/commits/V1.0.0
