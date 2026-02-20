---
title: Gemini Actions
date: 2026-02-20 05:54:25 +00:00
tags:
  - dortort
  - GitHub Actions
draft: false
repo: https://github.com/dortort/gemini-actions
marketplace: https://github.com/marketplace/actions/gemini-actions
version: v0.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/dortort/gemini-actions** to version **v0.1.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gemini-actions) to find the latest changes.

## Action Summary

Gemini Actions is a suite of GitHub Actions powered by Google Gemini's AI capabilities, designed to automate and enhance repository workflows. It addresses common development challenges such as generating pull requests from issues, conducting automated code reviews, diagnosing test failures, analyzing dependency impacts, and responding to alerts or repository-related questions. These actions streamline development processes by providing intelligent analysis, decision-making, and automated responses, improving efficiency and code quality.

## Release notes

Initial release of Gemini Actions — a collection of GitHub Actions powered by Google Gemini that automate repository workflows.

## Actions

- **[pr-review](https://github.com/dortort/gemini-actions/tree/v0.1.0/pr-review)** — Automated code review with inline comments and configurable strictness
- **[pr-from-issue](https://github.com/dortort/gemini-actions/tree/v0.1.0/pr-from-issue)** — Reads an issue, generates a code change, and opens a pull request
- **[dependency-impact](https://github.com/dortort/gemini-actions/tree/v0.1.0/dependency-impact)** — Analyzes dependency update PRs against actual codebase usage
- **[test-failure-diagnosis](https://github.com/dortort/gemini-actions/tree/v0.1.0/test-failure-diagnosis)** — Diagnoses CI test failures by linking PR changes to broken tests
- **[datadog-responder](https://github.com/dortort/gemini-actions/tree/v0.1.0/datadog-responder)** — Interprets Datadog alerts and takes repository actions
- **[repo-qa](https://github.com/dortort/gemini-actions/tree/v0.1.0/repo-qa)** — Answers codebase questions in Issues or Discussions with source references

## Supported ecosystems (dependency-impact)

- npm (`package.json` / `package-lock.json`)
- pip (`requirements.txt` / `Pipfile`)
- Go (`go.mod`)
- Terraform (`.terraform.lock.hcl`)

## Stack

- Node.js 20, TypeScript 5.7
- Nx monorepo with shared utilities (`@gemini-actions/shared`)
- Google Gemini API (default model: `gemini-2.0-flash`)
