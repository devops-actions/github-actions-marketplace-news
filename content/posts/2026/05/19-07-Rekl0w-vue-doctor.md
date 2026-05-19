---
title: Rekl0w Vue Doctor
date: 2026-05-19 07:21:43 +00:00
tags:
  - Rekl0w
  - GitHub Actions
draft: false
repo: https://github.com/Rekl0w/vue-doctor
marketplace: https://github.com/marketplace/actions/rekl0w-vue-doctor
version: v0.2.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/Rekl0w/vue-doctor** to version **v0.2.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rekl0w-vue-doctor) to find the latest changes.

## Action Summary

Vue Doctor is a GitHub Action and CLI tool designed to analyze Vue.js codebases for common issues related to security, correctness, performance, accessibility, and component architecture. It automates the detection of potential problems, providing a health score (0–100) along with actionable diagnostics to improve code quality and maintainability. By leveraging the official Vue compiler, it enables precise scanning of Vue single-file components, ensuring comprehensive insights into `<template>`, `<script>`, and `<style>` blocks.

## What's Changed

## Highlights

- Cleaner one-shot usage: `npx @rekl0w/vue-doctor@latest`
- New CLI workflows: `--diff`, `--staged`, `--project`, `--full`, `--json-compact`, `--offline`, and `--explain`
- New `vue-doctor install` command for installing the bundled coding-agent skill
- GitHub Action parity inputs for `project`, `diff`, and `offline`
- New diagnostics for bundle size, design quality, accessibility, and style performance
- Workspace aggregate JSON reports for multi-project scans
- `--staged --score` no longer prints a misleading `100` when there are no staged Vue source files

## GitHub Actions

Use the new tag in workflows:

```yaml
- uses: Rekl0w/vue-doctor@v0.2.0
  with:
    diff: main
    fail-on: warning
    github-token: ${{ secrets.GITHUB_TOKEN }}
```
