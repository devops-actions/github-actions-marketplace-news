---
title: exspec-lint
date: 2026-03-27 06:15:23 +00:00
tags:
  - morodomi
  - GitHub Actions
draft: false
repo: https://github.com/morodomi/exspec
marketplace: https://github.com/marketplace/actions/exspec-lint
version: v1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/morodomi/exspec** to version **v1**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/exspec-lint) to find the latest changes.

## Action Summary

**Summary:**  
The `exspec` GitHub Action is a static test quality linter designed to analyze test structures across multiple programming languages. It automates the detection of test quality issues such as missing assertions, excessive mocking, oversized tests, and untested API routes, providing actionable feedback to improve test reliability and maintainability. Its fast, static analysis approach offers structural insights that traditional coverage or mutation testing tools often overlook, enabling developers to enhance test robustness efficiently.

## Release notes

Static test quality linter for executable specifications. 

## Usage

```yaml
  - uses: morodomi/exspec@v1 
  with:
    lang: python  # python, typescript, php, rust
```
  
## Inputs

|Input | Default | Description |
|----|----|----|
|lang| (required) | Language to analyze |
| path | . | Path to analyze |
| format | terminal | Output: terminal, json, sarif, ai-prompt |
| strict  | false | Fail on WARN (not just BLOCK) |
| version | latest | exspec version  |

Full docs: https://github.com/morodomi/exspec
