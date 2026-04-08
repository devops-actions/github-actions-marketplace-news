---
title: Turbo TSC Reviewer
date: 2026-04-08 13:59:16 +00:00
tags:
  - built-for-dx
  - GitHub Actions
draft: false
repo: https://github.com/built-for-dx/turbo-tsc-reviewer
marketplace: https://github.com/marketplace/actions/turbo-tsc-reviewer
version: v1
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/built-for-dx/turbo-tsc-reviewer** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/turbo-tsc-reviewer) to find the latest changes.

## Action Summary

**Turbo TSC Reviewer** is a GitHub Action designed to streamline TypeScript error detection and reporting in modern monorepos using Turborepo. It automates TypeScript task execution, resolves errors to the correct workspace paths, and provides feedback via inline PR comments or status checks. This action eliminates the complexity of path-mapping in monorepos, reduces CI costs by running tasks only once, and ensures accurate, project-native error reporting.

## What's Changed

## First Major Release: Turbo TSC Reviewer 🚀

**Turbo TSC Reviewer** is a GitHub Action specifically designed for monorepos using Turborepo. It parses `tsc` output from workspace tasks and provides high-visibility feedback directly within your Pull Requests.

Unlike generic reporters, this action intelligently resolves workspace paths and maintains a **persistent single comment** in your PR to keep the discussion clean.

### ✨ Key Features

- **Turborepo Native**: Seamlessly parses JSON output from `npx turbo run check-types --json`.
- **Intelligent Path Resolution**: Automatically maps package-specific errors back to the correct files in your root repository.
- **Persistent PR Summary**: Creates a single dynamic comment that updates as you fix errors. It even deletes itself once all issues are resolved to reduce noise.
- **GitHub Check Run Integration**: Reports status via the GitHub Checks API (shows up in the PR status list).
- **Deep Linking**: Includes direct links to the exact file and line on GitHub where the error occurred.
- **Rich Job Summaries**: Provides a beautifully formatted table in the GitHub Actions "Summary" tab.
- **Workflow Annotations**: Inline error highlighting directly in the "Files Changed" tab.

### 🛠️ Example Usage

Add this to your `.github/workflows/quality.yml`:

```yaml
- name: Check TypeScript
  uses: your-org/turbo-tsc-reviewer@v1
  with:
    github_token: ${{ secrets.GITHUB_TOKEN }}
    task: "check-types"
    reporter: "github-pr-check"

