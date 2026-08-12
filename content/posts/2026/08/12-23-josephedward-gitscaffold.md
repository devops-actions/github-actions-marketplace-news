---
title: Gitscaffold – Roadmap to GitHub Issues
date: 2026-08-12 23:02:22 +00:00
tags:
  - josephedward
  - GitHub Actions
draft: false
repo: https://github.com/josephedward/gitscaffold
marketplace: https://github.com/marketplace/actions/gitscaffold-roadmap-to-github-issues
version: v0.1.17
dependentsNumber: "0"
actionType: Docker
actionSummary: |
  Gitscaffold is a command-line tool and GitHub Action designed to convert Markdown-based roadmaps into structured GitHub issues and milestones using AI-driven extraction and enrichment. It supports various features such as AI-powered issue extraction, roadmap synchronization, bulk deletion of closed issues, cleanup of issue titles, deduplication of issues, AI enrichment of descriptions, display of next action items, selection of the next open task for the current roadmap phase, comparison of local roadmaps vs GitHub issues, and more.
---


Version updated for **https://github.com/josephedward/gitscaffold** to version **v0.1.17**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gitscaffold-roadmap-to-github-issues) to find the latest changes.

## Action Summary

Gitscaffold is a command-line tool and GitHub Action designed to convert Markdown-based roadmaps into structured GitHub issues and milestones using AI-driven extraction and enrichment. It supports various features such as AI-powered issue extraction, roadmap synchronization, bulk deletion of closed issues, cleanup of issue titles, deduplication of issues, AI enrichment of descriptions, display of next action items, selection of the next open task for the current roadmap phase, comparison of local roadmaps vs GitHub issues, and more.

## What's Changed

- docs: Add release notes for v0.1.17 (774e5f5)
- fix: Properly mock load_dotenv in get_github_token test (38b8141)
- feat: Add uninstall command for clean removal of config and package (9be0afb)
- style: Normalize quoting for global config keys (3329e8e)
- fix: Prevent dotenv from loading real .env files in tests (5857e52)
- fix: Isolate test for global config token read (47e9759)
- fix: Resolve config test failures with robust parsing and mocking (8931215)
- fix: Update env handling tests for python-dotenv quoting (330874a)
- refactor: Secure config file permissions and add dedicated tests (d5404d6)
- test: Add unit tests for environment and config handling (0b67f70)
