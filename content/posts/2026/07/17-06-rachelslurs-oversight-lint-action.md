---
title: Oversight Lint
date: 2026-07-17 06:46:17 +00:00
tags:
  - rachelslurs
  - GitHub Actions
draft: false
repo: https://github.com/rachelslurs/oversight-lint-action
marketplace: https://github.com/marketplace/actions/oversight-lint
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action automates linting of Storybook MCP components manifest files. It checks for missing or improperly documented components, surfaces warnings as annotations on pull requests, and exits with appropriate error codes based on rule violations or exceeding warning limits. It requires a built manifest, Node 20.19+, and supports customizable rules through an `oversight.config.json` file.
---


Version updated for **https://github.com/rachelslurs/oversight-lint-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/oversight-lint) to find the latest changes.

## Action Summary

This GitHub Action automates linting of Storybook MCP components manifest files. It checks for missing or improperly documented components, surfaces warnings as annotations on pull requests, and exits with appropriate error codes based on rule violations or exceeding warning limits. It requires a built manifest, Node 20.19+, and supports customizable rules through an `oversight.config.json` file.

## What's Changed

Initial release.

Composite GitHub Action that runs `oversight-lint` over a built Storybook MCP components manifest with `--format github`, so documentation-coverage findings surface as annotations and can fail the build.

```yaml
- run: pnpm build-storybook
- uses: rachelslurs/oversight-lint-action@v1
  with:
    max-warnings: 0
```

Pin `@v1` for the moving major tag, or `@v1.0.0` to lock the version.
