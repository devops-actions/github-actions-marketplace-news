---
title: DevDox AI sonar
date: 2026-03-06 05:57:19 +00:00
tags:
  - montymobile1
  - GitHub Actions
draft: false
repo: https://github.com/montymobile1/devdox-ai-sonar
marketplace: https://github.com/marketplace/actions/devdox-ai-sonar
version: 0.0.5
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/montymobile1/devdox-ai-sonar** to version **0.0.5**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/devdox-ai-sonar) to find the latest changes.

## Action Summary

DevDox AI Sonar is a command-line tool that automates the process of reviewing and fixing code issues identified by SonarCloud, such as bugs, security vulnerabilities, and code smells. It integrates with Large Language Models (LLMs) to generate structured fixes, including code blocks, line numbers, and confidence scores, while maintaining a changelog for audit purposes. This tool streamlines issue resolution, reducing manual effort and enabling teams to efficiently address technical debt.

## Release notes

## What's Changed
- Switch workflow trigger from automatic pull_request to manual workflow_dispatch only, removing automatic runs on every PR (#XX) ([#54](https://github.com/montymobile1/devdox-ai-sonar/pull/54))
- Add manual inputs pr_number and source_branch to allow targeted fixes on any PR from the Actions UI  ([#54](https://github.com/montymobile1/devdox-ai-sonar/pull/54))
- Remove job-level if: github.event_name == 'pull_request' condition, no longer needed with single manual trigger([#54](https://github.com/montymobile1/devdox-ai-sonar/pull/54))

