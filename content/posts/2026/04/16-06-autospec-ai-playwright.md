---
title: AutoSpec AI - E2E Test Generator
date: 2026-04-16 06:25:44 +00:00
tags:
  - autospec-ai
  - GitHub Actions
draft: false
repo: https://github.com/autospec-ai/playwright
marketplace: https://github.com/marketplace/actions/autospec-ai-e2e-test-generator
version: v1.4.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/autospec-ai/playwright** to version **v1.4.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/autospec-ai-e2e-test-generator) to find the latest changes.

## Action Summary

AutoSpec AI is a GitHub Action that automates the generation of end-to-end (E2E) Playwright tests based on code changes detected in commits or pull requests. Using AI-driven diff analysis and test planning, it creates production-quality tests that match your existing test framework and style, alleviating the need for manual test creation. Key capabilities include automated test generation, API mock generation, visual regression testing, and integration with debugging tools like Playwright's trace viewer, streamlining quality assurance workflows.

## What's Changed

## What changed

This release addresses the issues reported by Sravya on [PR #3347](https://github.com/sophos-internal/cld.cloud.central-ui/pull/3347): hallucinated POM methods, broken inline class output, and hallucinated navigation routes.

### 1. Arrow-function locator extraction (POM scanner)

The scanner now recognizes locators defined as arrow functions inside object literals — the pattern used by the Sophos `CustomDashboards` POM and many other codebases:

```typescript
elements = {
  getWidgets: (): Locator => this.page.locator('[id*="widget"]'),
  getEditButton: (): Locator => this.page.getByTestId('edit-btn'),
  nested: {
    getDashboardGrid: (): Locator => this.page.locator('scwx-grid'),
  },
};
```

Previously the scanner found the class name but returned 0 locators for this pattern, causing the LLM to hallucinate element methods like `elements.getCaseFlowChart()` that don't exist.

### 2. Trace injection no longer breaks class bodies

The `test.use({ trace: ... })` post-processor now stops scanning for imports at the first non-import code line. Previously, when the LLM emitted stray `import` statements mid-file (e.g., inside an inline class), the post-processor would insert `test.use()` inside the class body, producing invalid TypeScript.

### 3. Route extraction from POM classes

The scanner now extracts navigation URLs from POM `goto()` methods:
- `this.page.goto('/dashboards/custom')` → route: `/dashboards/custom`
- `this.page.goto(path ?? '/default')` → route: `/default`

These routes are injected into the LLM prompt so it uses real navigation paths instead of guessing from component/file names (e.g., `/case-flow-expand-mode` which doesn't exist).

### Also included (from v1.3.1)

- Anti-hallucination prompts are now conditional — only injected when the scanner actually finds artifacts
- README documents Project Structure Discovery configuration

### Upgrading

No configuration changes required. If you have custom `pom_patterns`, the new arrow-function extraction works automatically.

For projects with non-standard POM naming, set `pom_patterns` in your workflow:
```yaml
pom_patterns: '**/*.po.ts,**/pages/**/*.ts'
```
