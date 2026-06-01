---
title: OTel GenAI Diff
date: 2026-06-01 06:50:16 +00:00
tags:
  - mizcausevic-dev
  - GitHub Actions
draft: false
repo: https://github.com/mizcausevic-dev/otel-genai-diff-action
marketplace: https://github.com/marketplace/actions/otel-genai-diff
version: v0.1.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/mizcausevic-dev/otel-genai-diff-action** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/otel-genai-diff) to find the latest changes.

## Action Summary

The **`otel-genai-diff-action`** GitHub Action automates the validation of changes in OTel GenAI rollup reports within pull requests by calculating structured diffs between the current and previous report versions. It identifies and flags significant cost or token usage increases (with a default 10% threshold), posts the analysis as a PR comment, and optionally fails the build for breaking changes. This action streamlines the review process by ensuring cost efficiency and consistency across AI tooling updates.

## What's Changed

First semver-versioned release.\n\nConsumers can pin via:\n\nyaml\nuses: mizcausevic-dev/otel-genai-diff-action@v0.1.0    # exact version\nuses: mizcausevic-dev/otel-genai-diff-action@v0.1      # floating major\n\n\nAGPL-3.0-or-later. See README for usage.
