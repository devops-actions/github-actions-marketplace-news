---
title: Astro Score
date: 2026-04-20 14:28:36 +00:00
tags:
  - Use-Astro
  - GitHub Actions
draft: false
repo: https://github.com/Use-Astro/score-action
marketplace: https://github.com/marketplace/actions/astro-score
version: v1.0.3
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/Use-Astro/score-action** to version **v1.0.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/astro-score) to find the latest changes.

## Action Summary

Astro Score GitHub Action automates production readiness checks for JavaScript and TypeScript repositories by performing 22 diagnostic tests and assigning a 0-100 score. It posts the results as a pull request comment, enabling teams to identify potential issues before deploying code. This action helps ensure code quality and reliability by evaluating aspects like security, observability, and CI/CD best practices.

## What's Changed

Suppresses the public report URL in the PR comment for private repositories.

**Why:** The report URL links to useastro.com/score, which can only scan public GitHub repos. For private repos, the link is broken and exposes the repo URL in the PR comment unnecessarily.

**Change:** v1.0.3 detects `repository.private` at runtime. For private repos, the "Full report" link is omitted. Public repo behavior is unchanged.

**No breaking changes.** Same 22 checks, same scoring logic, same upsert marker. Safe patch upgrade for all users.
