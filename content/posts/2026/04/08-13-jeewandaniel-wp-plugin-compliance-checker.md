---
title: WP Plugin Compliance Checker
date: 2026-04-08 13:57:54 +00:00
tags:
  - jeewandaniel
  - GitHub Actions
draft: false
repo: https://github.com/jeewandaniel/wp-plugin-compliance-checker
marketplace: https://github.com/marketplace/actions/wp-plugin-compliance-checker
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/jeewandaniel/wp-plugin-compliance-checker** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/wp-plugin-compliance-checker) to find the latest changes.

## Action Summary

The **WordPress.org Plugin Compliance Checker** is a tool designed to help WordPress plugin developers identify and address common compliance issues before submitting plugins to WordPress.org. It automates pre-submission checks, integrates with the official WordPress Plugin Check tool, and provides features like automated fixes, customizable rule filtering, and detailed reports in various formats. By streamlining the compliance process, it addresses workflow challenges and enhances the developer experience for individuals, teams, and agencies.

## What's Changed

Scan WordPress plugins for WordPress.org compliance issues before
   submission.

  ## Features
  - 21 built-in rules covering security, file structure, and readme
   requirements
  - Merge official Plugin Check results via `run_wp_cli: true`
  - Auto-fix simple issues with `--fix` flag
  - Incremental scanning with `--incremental` for faster rescans
  - PR comment output ready for automated reviews
  - MCP server for AI coding assistants (Claude Code, Cursor)

  ## Quick Start
  ```yaml
  - uses: jeewandaniel/wp-plugin-compliance-checker@v1.0.0
    with:
      plugin_dir: '.'

  What's Included

  - CLI tool for local scanning
  - GitHub Action with structured outputs
- MCP server for AI-assisted development
