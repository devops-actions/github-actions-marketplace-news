---
title: TestSprite E2E Tests
date: 2026-02-25 13:26:17 +00:00
tags:
  - TestSprite
  - GitHub Actions
draft: false
repo: https://github.com/TestSprite/run-action
marketplace: https://github.com/marketplace/actions/testsprite-e2e-tests
version: v1
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/TestSprite/run-action** to version **v1**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/testsprite-e2e-tests) to find the latest changes.

## Action Summary

The TestSprite GitHub Action automates the triggering of TestSprite end-to-end (E2E) tests directly from GitHub workflows, with options to post test results as pull request comments and enforce quality gates by blocking PRs if tests fail. It solves the problem of integrating E2E test execution and result reporting into CI/CD pipelines, ensuring test visibility and maintaining code quality. Key features include running tests based on priority, blocking merges for failed tests, and supporting preview deployments for targeted testing.

## Release notes

**Features** 
Trigger E2E tests against any URL with a single workflow step using your TestSprite API key PR comments — automatically posts a test results summary on pull requests when github-token is provided Blocking mode — optionally wait for the test run to complete and fail the step if tests don't pass, enforcing a quality gate on every PR Priority filtering — run only High, Medium, or Low priority tests, or all of them (default) Structured outputs — expose total_tests, passed_tests, and result_url for use in downstream steps Preview deployment support — pass any dynamic URL (e.g. Vercel/Netlify preview) as base_url to test the exact build under review

**Quick Start**
```
uses: TestSprite/run-action@v1 
with: 
  testsprite-api-key: ${{ secrets.TESTSPRITE_API_KEY }} 
  base_url: 'https://your-app.example.com/' 
  blocking: 'true'
```
