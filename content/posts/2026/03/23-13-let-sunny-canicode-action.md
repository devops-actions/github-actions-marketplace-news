---
title: CanICode Action
date: 2026-03-23 13:39:06 +00:00
tags:
  - let-sunny
  - GitHub Actions
draft: false
repo: https://github.com/let-sunny/canicode-action
marketplace: https://github.com/marketplace/actions/canicode-action
version: v0.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/let-sunny/canicode-action** to version **v0.1.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/canicode-action) to find the latest changes.

## Action Summary

The **CanICode Action** is a GitHub Action designed to analyze Figma designs during the CI/CD process, ensuring they meet predefined quality thresholds before merging pull requests. It automates the extraction of Figma URLs from PR descriptions, evaluates design quality based on various metrics, and provides a score, grade, and detailed feedback as a PR comment. This action helps enforce design standards, streamlines design review workflows, and lays the foundation for future AI-driven design-to-code automation.

## Release notes

Initial release of CanICode Action.

  Analyze Figma designs in CI and enforce quality scores before merging — like a linter, but for design.

  ## Features
  - Run canicode analysis on any Figma URL with `node-id`
  - Set minimum score threshold to pass/fail the check
  - Auto-post analysis summary as a PR comment (updated on re-runs)
  - Choose analysis preset: relaxed, dev-friendly, ai-ready, strict
  - Pin canicode CLI version for reproducible builds

  ## Usage

  ```yaml
  - uses: let-sunny/canicode-action@v0.1.0
    with:
      figma_url: 'https://www.figma.com/design/ABC/File?node-id=1-234'
      figma_token: ${{ secrets.FIGMA_TOKEN }}
      min_score: 70

  Outputs

  - score — Overall percentage (0-100)
  - grade — Letter grade (A/B/C/D/F)
  - passed — Whether the threshold was met
  - report_json — Full analysis result

