---
title: vibecheck-ai-slop
date: 2026-08-02 21:02:23 +00:00
tags:
  - yuvrajangadsingh
  - GitHub Actions
draft: false
repo: https://github.com/yuvrajangadsingh/vibecheck
marketplace: https://github.com/marketplace/actions/vibecheck-ai-slop
version: v1.15.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The vibecheck GitHub Action automates the detection of AI-generated code smells through ESLint rules. It helps identify common patterns in generated code such as hardcoded secrets, empty catch blocks, and insecure SQL queries. The action runs locally, is zero-config, and provides real-time feedback on issues found in your codebase.
---


Version updated for **https://github.com/yuvrajangadsingh/vibecheck** to version **v1.15.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vibecheck-ai-slop) to find the latest changes.

## Action Summary

The vibecheck GitHub Action automates the detection of AI-generated code smells through ESLint rules. It helps identify common patterns in generated code such as hardcoded secrets, empty catch blocks, and insecure SQL queries. The action runs locally, is zero-config, and provides real-time feedback on issues found in your codebase.

## What's Changed

## HTML scanning

`.html` and `.htm` files are now scanned. Inline `<script>` bodies are extracted and linted as JS, and script type matching follows the WHATWG MIME sniffing standard, so JSON, template and importmap scripts are skipped rather than parsed as code. Scripts with `src=` are treated as external and ignored.

HTML findings are not auto-fixable. A `remove-line` fix against an extracted script line would either no-op against the snippet guard or delete the surrounding tags, so `--fix` now declines them instead of reporting a fix it cannot make.

## A real lexer

String, template, regex and comment masking moved into `src/lexer.ts` and is now shared by suppressions, brace tracking and rule matching. `suppressions.ts` lost 127 lines of hand-rolled scanning in the process.

The practical effect is fewer phantom matches: a `}` inside a string no longer closes a block that was never open, and a commented-out call no longer counts as a call.

## no-console-pollution false positives

The rule was flagging console calls that never reach production.

Running v1.14 against a Vite app produced 19 findings. All 19 were wrong. Thirteen sat inside `if (import.meta.env.DEV)` blocks, which the bundler strips from the production build entirely. The other six were in a `scripts/` CLI, where writing to stdout is the whole point of the file.

The rule could not have caught this before, because it only ever saw one line at a time and the guard is on a different line. It is now block-aware and tracks the enclosing guard: `import.meta.env.DEV`, `__DEV__`, `NODE_ENV !== 'production'` and `NODE_ENV === 'development'`, plus the single-line form. `scripts/`, `bin/`, `tools/` and `tasks/` are treated as CLI directories.

`NODE_ENV === 'production'` is deliberately not treated as a guard. That block ships, so a console call inside it is still a real finding.

## Other fixes

- single-line `catch` body extraction no longer runs past the block when outer scopes close on the same line
- stdout is allowed to flush before exit instead of calling `process.exit`, which could truncate piped output

341 tests.

```
npx @yuvrajangadsingh/vibecheck .
```


**Full Changelog**: https://github.com/yuvrajangadsingh/vibecheck/compare/v1.14.0...v1.15.0

