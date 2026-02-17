---
title: ignition-lint-toolkit
date: 2026-02-17 02:56:18 +00:00
tags:
  - TheThoughtagen
  - GitHub Actions
draft: false
repo: https://github.com/TheThoughtagen/ignition-lint
marketplace: https://github.com/marketplace/actions/ignition-lint-toolkit
version: v1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/TheThoughtagen/ignition-lint** to version **v1**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ignition-lint-toolkit) to find the latest changes.

## Action Summary

The `ignition-lint` GitHub Action is a comprehensive linting toolkit designed for Inductive Automation's Ignition SCADA projects. It automates the detection of issues such as Jython syntax errors, malformed bindings, and deprecated API usage, while enforcing best practices like naming conventions and identifying performance bottlenecks. By integrating with CI/CD pipelines, GitHub Actions, and pre-commit hooks, it ensures consistent code quality and reduces runtime errors in industrial automation systems.

## Release notes

## 🚀 Ignition Lint Toolkit - GitHub Action

Automatically lint Ignition SCADA projects in your CI/CD pipeline. Catch errors before runtime, enforce naming conventions, and maintain code quality.

### Quick Start

```yaml
- uses: TheThoughtagen/ignition-lint@v1
  with:
    project_path: .
    lint_type: all
    fail_on: error
```

### Features

✅ **Perspective Views** - JSON schema validation, component structure, expression syntax  
✅ **Scripts** - Python syntax, docstrings, deprecated APIs  
✅ **Naming** - Enforce PascalCase, camelCase, snake_case conventions  
✅ **Expressions** - Validate bindings, detect polling issues, find bad refs  
✅ **Suppression** - `.ignition-lintignore` file and inline comments  

### Documentation

- 📖 [Full Action Documentation](https://github.com/TheThoughtagen/ignition-lint/blob/main/ACTION_README.md)
- 📦 [PyPI Package](https://pypi.org/project/ignition-lint-toolkit/)
- 📚 [Complete Docs](https://TheThoughtagen.github.io/ignition-lint/)

### What's Included

This release includes all features from v1.1.0:
- Comprehensive test workflow with 6 passing scenarios
- File-based and project-based linting
- All check types: perspective, scripts, naming
- Component filtering and suppression support
