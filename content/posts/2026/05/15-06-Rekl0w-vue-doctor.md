---
title: Rekl0w Vue Doctor
date: 2026-05-15 06:31:47 +00:00
tags:
  - Rekl0w
  - GitHub Actions
draft: false
repo: https://github.com/Rekl0w/vue-doctor
marketplace: https://github.com/marketplace/actions/rekl0w-vue-doctor
version: v0.1.2
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/Rekl0w/vue-doctor** to version **v0.1.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rekl0w-vue-doctor) to find the latest changes.

## Action Summary

Vue Doctor is a GitHub Action and CLI tool that analyzes Vue.js codebases to detect common issues related to security, correctness, performance, accessibility, and component architecture. It provides a health score (0-100) and actionable diagnostics, helping developers automate the review process and catch mistakes before deployment. Its key capabilities include scanning Vue single-file components with the official compiler, respect for ignore files, customizable rules, and integration with CI workflows through GitHub Actions.

## What's Changed

## v0.1.2

This release improves the GitHub Actions CI experience for Vue Doctor.

### What's New

- Added first-class GitHub Action input for `annotations`.
- Added first-class GitHub Action input for `json`.
- Added configurable `report-path` support for JSON reports.
- Added a `report-path` action output so JSON reports can be uploaded as workflow artifacts.
- Documented score output usage in GitHub Actions.
- Documented JSON report artifact upload usage with `actions/upload-artifact`.

### CI Behavior

The GitHub Action now supports:

```yaml
- uses: Rekl0w/vue-doctor@v0.1.2
  id: vue-doctor
  with:
    directory: .
    fail-on: warning
    verbose: true
    annotations: true
    json: true
    report-path: vue-doctor-report.json
    github-token: ${{ secrets.GITHUB_TOKEN }}
```

You can read the score with:

```yaml
${{ steps.vue-doctor.outputs.score }}
```

And upload the JSON report with:

```yaml
- uses: actions/upload-artifact@v4
  if: always()
  with:
    name: vue-doctor-report
    path: ${{ steps.vue-doctor.outputs['report-path'] }}
```

### Fixes

- PR comment/report/score follow-up steps now keep running even when the configured CI gate fails.
- Human-readable PR comments stay separate from GitHub Actions annotations, avoiding raw annotation commands inside PR comments.

### Links

- Commit: https://github.com/Rekl0w/vue-doctor/commit/a1329f4603f6d635d128a4e326420296398a64a5
- Tag: https://github.com/Rekl0w/vue-doctor/releases/tag/v0.1.2
- npm: https://www.npmjs.com/package/@rekl0w/vue-doctor

