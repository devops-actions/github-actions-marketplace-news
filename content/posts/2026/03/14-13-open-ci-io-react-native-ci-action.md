---
title: OpenCI React Native CI
date: 2026-03-14 13:36:34 +00:00
tags:
  - open-ci-io
  - GitHub Actions
draft: false
repo: https://github.com/open-ci-io/react-native-ci-action
marketplace: https://github.com/marketplace/actions/openci-react-native-ci
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/open-ci-io/react-native-ci-action** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/openci-react-native-ci) to find the latest changes.

## Action Summary

The OpenCI React Native CI GitHub Action automates the process of linting, type-checking, and testing React Native (Expo) projects in a single workflow. It simplifies project maintenance by setting up Node.js, installing dependencies, enforcing ESLint rules, running TypeScript checks, and executing Jest tests. This action streamlines development workflows, ensuring code quality and reliability with minimal manual intervention.

## Release notes

## 🎉 Initial Release

**OpenCI React Native CI** — Lint, type-check, and test your React Native (Expo) project in one step.

### Features
- Node.js setup (configurable version)
- Multi-package-manager support (npm, yarn, pnpm)
- ESLint with zero-warning enforcement
- TypeScript type-check via `tsc --noEmit`
- Jest tests with `--passWithNoTests`

### Usage

```yaml
- uses: open-ci-io/react-native-ci-action@v1
```

See [README](https://github.com/open-ci-io/react-native-ci-action#readme) for full documentation.
