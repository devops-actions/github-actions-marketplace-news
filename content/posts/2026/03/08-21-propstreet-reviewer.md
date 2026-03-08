---
title: Pro PR Reviewer
date: 2026-03-08 21:21:56 +00:00
tags:
  - propstreet
  - GitHub Actions
draft: false
repo: https://github.com/propstreet/reviewer
marketplace: https://github.com/marketplace/actions/pro-pr-reviewer
version: v3.5.1
dependentsNumber: "3"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/propstreet/reviewer** to version **v3.5.1**.
- This action is used across all versions by **3** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pro-pr-reviewer) to find the latest changes.

## Action Summary

The "AI Pull Request Reviewer" GitHub Action leverages Azure OpenAI to automate the review of pull request diffs by generating and posting AI-driven inline code review comments. It helps developers identify potential issues, such as bugs, security vulnerabilities, and performance concerns, while allowing customizable review guidelines and filtering based on severity. Key capabilities include support for various reasoning models, multi-line comments, file exclusions, and handling large or long-running reviews with background processing.

## Release notes

### Fixed
- **Background mode retry logic** — Background requests that fail with transient Azure errors (`server_error`, `rate_limit_exceeded`, or the generic "An error occurred" message) now automatically retry up to 3 times with exponential backoff (5s → 10s → 20s)
- **Background request creation retry** — The initial `responses.create()` call in background mode now retries on transient HTTP errors (408/429/500/502/503/504)

### Added
- **Enhanced background failure logging** — Response ID, full error object, elapsed time, polling attempts, and token usage logged on failure

### Changed
- **Updated dependencies** — `openai` SDK updated to v6.27.0 (resolves `xhigh` type errors)
- **Updated docs** — README updated with gpt-5.4 as recommended model

See [CHANGELOG.md](./CHANGELOG.md) for full details.
