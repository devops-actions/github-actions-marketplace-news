---
title: AI PR Reviewer Agent
date: 2026-01-12 05:56:39 +00:00
tags:
  - kadusic1
  - GitHub Actions
draft: false
repo: https://github.com/kadusic1/PR-Review-Agent
marketplace: https://github.com/marketplace/actions/ai-pr-reviewer-agent
version: v0.1.0-beta
dependentsNumber: "?"
---


Version updated for **https://github.com/kadusic1/PR-Review-Agent** to version **v0.1.0-beta**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-pr-reviewer-agent) to find the latest changes.

## Action Summary

The Multi-Agent PR Review System is a GitHub Action that automates comprehensive code reviews using AI agents. It analyzes pull requests for logical errors, security vulnerabilities, style conventions, and architectural changes, providing an organized report with categorized issues, suggested fixes, and approval status directly in the PR. By leveraging dual AI models for efficiency, it streamlines code quality assurance and reduces manual review effort.

## Release notes

### 🚀 Initial Experimental Release

This is the first public release of the **Multi-Agent PR Review System**. 
It utilizes a dual-model approach (Heavy/Fast) to analyze Pull Requests for logic errors, style violations, and architectural changes.

#### ✨ Key Features in v0.1.0
- **Multi-Agent Orchestration:** Separate agents for Logic, Style, and Architecture.
- **Smart Diff Compression:** Handles large PRs by intelligently collapsing code blocks.
- **Mermaid Diagrams:** Automatically visualizes class structure changes.
- **Detailed Reports:** Posts a formatted Markdown comment on the PR.

#### ⚠️ Experimental Note
This version is **fully experimental** and released as a test project. 
- Please monitor API usage (tokens) carefully.
- Some logic reviews may produce hallucinations depending on the model used (Llama-3-70b recommended).

#### 📦 How to Use
Add this to your `.github/workflows/ai_review.yml`:

```yaml
- uses: your-username/your-repo-name@v0.1.0-beta
  with:
    GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
    LLM_API_KEY: ${{ secrets.LLM_API_KEY }}
```
