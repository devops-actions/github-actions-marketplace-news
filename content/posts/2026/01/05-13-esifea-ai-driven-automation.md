---
title: AI Driven Automation Coder/Reviewer
date: 2026-01-05 13:25:14 +00:00
tags:
  - esifea
  - GitHub Actions
draft: false
repo: https://github.com/esifea/ai-driven-automation
marketplace: https://github.com/marketplace/actions/ai-driven-automation-coder-reviewer
version: v0.1.0-beta
dependentsNumber: "?"
---


Version updated for **https://github.com/esifea/ai-driven-automation** to version **v0.1.0-beta**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-driven-automation-coder-reviewer) to find the latest changes.

## Action Summary

This GitHub Action enables AI-driven automation for coding and code review tasks using a dual-agent architecture consisting of a Coder and Reviewer. The Coder generates code based on task instructions and handles Q&A queries, while the Reviewer evaluates the code against requirements and provides feedback through GitHub pull request reviews. This action streamlines the development and review process by automating code generation, iterative improvements, and task-specific reviews.

## Release notes

## Initial Release

- chore: fix name (831d554)
- chore: exclude auto generated file from the stage (6ac5ba1)
- feat(workflows): add target branch as an input parameter (bc2d3ae)
- feat(agent): add summarize (9f08cfb)
- fix(workflows): fix test (70be8c5)
- fix(agent): do not exit with error on testing (cac0ef4)
- fix(workflows): extract task id from branch name (ca322ef)
- fix(workflows): remove default value for task id (fb809b3)
- fix(agent): print review content before submission (4aba115)
- feat(workflows): add test (f930ace)
- feat(workflows): update workflows (663fd3c)
- feat(agent): remove deprecated implementation (290fe64)
- feat(agent): add main (1833a98)
- feat(agent): add package 'prompt' for guideline according to language (3373ed3)
- feat(agent): summarize completed task for future reference (0b17368)
- feat(agent): get context from dependent files (e558486)
- chore(agent): apply gofmt (54df8e2)
- feat(agent): add package 'role' (41eab39)
- feat(agent): add package 'provider' (2307922)
- feat(agent): add tests for package 'parser' (de10d03)
- feat(agent): add package 'parser' (fa3ca93)
- feat(agent): get proper context from sources (1dcb4d3)
- feat(agent): add package 'aicontext' (ae12147)
- feat(agent): add package 'config' (7b4d656)
- refactor(agent): start refactoring agent control logic from Python to Go (b8b165e)
- chore: update README.md (28bd447)
- feat(agent): initial draft of AI agent specifications with Gemini (cfaf56d)
- feat(workflow): initial draft of AI driven automation with Gemini (e297ac8)
- Initial commit (ee30f77)
