---
title: DiffFox Code Review
date: 2026-03-16 21:41:25 +00:00
tags:
  - mthooyavan
  - GitHub Actions
draft: false
repo: https://github.com/mthooyavan/diff-fox
marketplace: https://github.com/marketplace/actions/difffox-code-review
version: v0.1.4
dependentsNumber: "1"
actionType: Docker
---


Version updated for **https://github.com/mthooyavan/diff-fox** to version **v0.1.4**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/difffox-code-review) to find the latest changes.

## Action Summary

DiffFox is an AI-powered GitHub Action and plugin for automated code reviews, analyzing pull requests or local changes from six critical engineering perspectives: logic, security, architecture, performance, risk, and cost optimization. It identifies potential issues like runtime bugs, security vulnerabilities, design flaws, performance bottlenecks, and cost inefficiencies, minimizing false positives through rule-based filtering and second-opinion verification. By automating comprehensive code analysis, DiffFox streamlines review workflows and enhances code quality.

## Release notes

# DiffFox v0.1.4

## What's New

### Commit Message Context
Review agents now receive PR commit messages alongside the diff. This helps agents distinguish intentional changes (e.g., "restructure plugin to match discovery convention") from accidental regressions — reducing false positives on deliberate removals and restructuring.

### LLM-Verified Comment Resolution
The resolver no longer uses heuristic matching to decide if old findings were fixed. Instead, it fetches the current code and asks the LLM to verify whether each issue was actually addressed. This prevents false "Addressed" replies caused by formatting-only changes or dedup filtering.

## Bug Fixes
- **Cap commit fetch at 50** — `get_pr_commits()` now makes a single API call with `per_page=50` instead of unbounded paginated fetching
- **Cap resolution checks at 20** — prevents unbounded LLM token cost on PRs with many old comments
- **Exact bot reply matching** — already-resolved check now matches the specific bot reply prefix (`✅ **Addressed**`) instead of bare substring, avoiding false skips if a user writes "Addressed" in their reply

## Infrastructure
- Add `.gitignore` (excludes `__pycache__/`, build artifacts)
