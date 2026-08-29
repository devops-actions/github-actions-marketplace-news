---
title: guard-my-design-system
date: 2026-08-29 22:14:06 +00:00
tags:
  - gregkozakiewicz
  - GitHub Actions
draft: false
repo: https://github.com/gregkozakiewicz/guard-my-design-system
marketplace: https://github.com/marketplace/actions/guard-my-design-system
version: v1.1.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action monitors pull requests to detect and warn about design system violations in your codebase. It checks only added lines, compares them to the learned values from `roast-my-design-system`, and provides specific comments indicating any issues found, helping maintain a clean and consistent design system.
---


Version updated for **https://github.com/gregkozakiewicz/guard-my-design-system** to version **v1.1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/guard-my-design-system) to find the latest changes.

## Action Summary

This GitHub Action monitors pull requests to detect and warn about design system violations in your codebase. It checks only added lines, compares them to the learned values from `roast-my-design-system`, and provides specific comments indicating any issues found, helping maintain a clean and consistent design system.

## What's Changed

Your design system dies one pull request at a time. This makes sure it doesn't.

The guard judges only the lines a pull request adds, against the design system
the repo already has. It catches stray colours (and names the nearest token),
spacing values new to the codebase (and names the nearest step), undeclared
typefaces, !important, and arbitrary Tailwind values. One sticky comment per
pull request, updated in place; strict mode fails the check instead.

Field-tested against vercel/ai-chatbot, excalidraw and shadcn-ui, plus
master-only repos, repos with no remote, and detached-HEAD CI. Exclusions
scope the judging as well as the learning, and on a fork's pull request the
verdict lands in the workflow log with a line saying why it could not be
posted. Honest limits are documented in the README.

Full history in CHANGELOG.md.
