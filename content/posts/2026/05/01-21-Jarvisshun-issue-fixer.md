---
title: Issue Fixer
date: 2026-05-01 21:50:38 +00:00
tags:
  - Jarvisshun
  - GitHub Actions
draft: false
repo: https://github.com/Jarvisshun/issue-fixer
marketplace: https://github.com/marketplace/actions/issue-fixer
version: v1.0.0
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/Jarvisshun/issue-fixer** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/issue-fixer) to find the latest changes.

## Action Summary

The **Issue Fixer** GitHub Action is an AI-powered tool that automates the process of identifying, analyzing, and resolving issues in your codebase. It reads GitHub issues, uses advanced search and large language models (LLMs) to diagnose root causes, and generates code fixes, which it then validates, tests, and submits as pull requests. This action streamlines issue resolution, reduces manual debugging, and enhances code quality through features like multi-file dependency analysis, test verification, and confidence scoring.

## What's Changed

## Issue Fixer v1.0.0

AI Agent that automatically fixes GitHub Issues and creates Pull Requests.

### Features
- Multi-Agent Pipeline (Analyzer, Search, Fix, DepCheck, Review)
- Hybrid RAG (Vector + BM25 + RRF reranking)
- Diff/Patch Mode with fuzzy matching
- Feedback Learning with few-shot examples
- Confidence Scoring (0-100)
- Code Sandbox verification
- Multi-language prompts (12 languages)
- Plugin System
- Slack/Discord notifications
- GitHub Action for CI/CD
- Statistics Dashboard
- Ollama local model support

### Install
```
pip install git+https://github.com/Jarvisshun/issue-fixer.git
```

### Quick Start
```
issue-fixer fix https://github.com/owner/repo/issues/42
```

### GitHub Action
```yaml
- uses: Jarvisshun/issue-fixer@v1
  with:
    issue-url: ${{ github.event.issue.html_url }}
    openai-api-key: ${{ secrets.OPENAI_API_KEY }}
```
