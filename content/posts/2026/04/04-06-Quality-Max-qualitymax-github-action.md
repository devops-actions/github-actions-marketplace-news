---
title: QualityMax Test Runner
date: 2026-04-04 06:09:34 +00:00
tags:
  - Quality-Max
  - GitHub Actions
draft: false
repo: https://github.com/Quality-Max/qualitymax-github-action
marketplace: https://github.com/marketplace/actions/qualitymax-test-runner
version: v1.2.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/Quality-Max/qualitymax-github-action** to version **v1.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/qualitymax-test-runner) to find the latest changes.

## Action Summary

The **QualityMax Test Runner GitHub Action** integrates AI-powered end-to-end (E2E) testing into your CI/CD pipeline, automating test execution on every push, pull request, or scheduled event. It provides instant feedback by posting test results directly to pull requests, reducing manual testing efforts and enabling faster identification of issues. Key features include automated test generation and maintenance with AI, flaky test detection with auto-retries, local execution capability, and the ability to bootstrap tests via AI discovery.

## What's Changed

## What's Changed

### Domain Migration
- All API URLs, report links, error messages, and documentation updated from `qamax.co` to `qualitymax.io`
- Logo updated to new `qualitymax-logo-color.png`

### Documentation
- README now documents all inputs including seed mode (`mode`, `auto-discover`, `max-seed-tests`, `seed-descriptions`)
- All outputs documented including seed mode outputs
- Fixed marketplace badge URL
- Added seed mode example workflow
- Updated support links

### Includes previously unreleased changes (from Feb 17)
- Self-service test seeding + local execution in GitHub runner
- `project_id` type coercion fix
- `baseURL` support in Playwright config for local execution

**Full Changelog**: https://github.com/Quality-Max/qualitymax-github-action/compare/v1.1.0...v1.2.0
