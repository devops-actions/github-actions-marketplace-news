---
title: QualityMax Test Grader
date: 2026-03-27 21:44:38 +00:00
tags:
  - Quality-Max
  - GitHub Actions
draft: false
repo: https://github.com/Quality-Max/qualitymax-grader
marketplace: https://github.com/marketplace/actions/qualitymax-test-grader
version: v0.2.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/Quality-Max/qualitymax-grader** to version **v0.2.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/qualitymax-test-grader) to find the latest changes.

## Action Summary

The **qualitymax-grader** GitHub Action evaluates the quality of Playwright test scripts by assigning them a grade (A-F) based on best practices, coding standards, and potential anti-patterns. It automates the process of identifying issues such as missing imports, lack of assertions, fragile selectors, and improper use of test steps, helping developers improve test reliability and maintainability. Its key capabilities include detailed scoring, actionable feedback, and support for grading multiple test files simultaneously.

## Release notes

## qualitymax-grader v0.2.0

Lighthouse for test quality. Grade your Playwright tests A-F with a single command.

### What's New

**17 Scoring Checks**
- @playwright/test imports, test structure, assertions, balanced braces, length
- Navigation, test.step() blocks, meaningful actions, selector stability
- Anti-patterns: `waitForTimeout`, `test.only()`, `test.skip()`, `page.pause()`, `debugger`

**Playwright Reporter**
```ts
// playwright.config.ts
reporter: [['qualitymax-grader/reporter', { minGrade: 'B' }]]
```

**GitHub Action**
```yaml
- uses: Quality-Max/qualitymax-grader@v0.2.0
  with:
    test-dir: 'tests/**/*.spec.ts'
    min-grade: 'B'
```

**Config File** (`.qualitymaxrc.json`)
- Disable checks, set min-grade default, ignore patterns

**Fix Suggestions**
- Every failing check includes a one-line hint on how to fix it

**Output Formats**
- `--format text` (default), `json`, `junit`, `sarif`

**89 tests across 6 suites.**

### Quick Start

```bash
npx qualitymax-grader tests/**/*.spec.ts
```

Zero install. Zero config. Zero API keys.

### Links
- [README](https://github.com/Quality-Max/qualitymax-grader#readme)
- [qualitymax.io](https://qualitymax.io)
