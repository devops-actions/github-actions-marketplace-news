---
title: HyperHawk Link Checker
date: 2026-03-10 13:24:56 +00:00
tags:
  - dvdstelt
  - GitHub Actions
draft: false
repo: https://github.com/dvdstelt/hyperhawk
marketplace: https://github.com/marketplace/actions/hyperhawk-link-checker
version: v1.5.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/dvdstelt/hyperhawk** to version **v1.5.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/hyperhawk-link-checker) to find the latest changes.

## Action Summary

HyperHawk is a GitHub Action designed to automatically scan markdown files for broken links and provide actionable feedback. It checks internal, same-organization GitHub, and external links, reporting issues directly on pull requests as inline comments with one-click fixes, or summarizing them during pushes or scheduled runs. This action streamlines link validation, reducing manual effort and ensuring documentation accuracy.

## Release notes

## Enhancements

- Multiple links on the same line now result in a single comment, not multiple

## Documentation

- README shortened - Detailed sections moved into dedicated docs under /docs/, keeping the README focused on quickstart and inputs.
  - New documentation pages:
  - /docs/configuration.md - strict mode, ignore patterns, scanning scope
  - /docs/how-it-works.md - link classification, PR review behaviour, permissions
  - /docs/cross-repo-access.md - checking links into private repositories with full workflow examples
  - /docs/examples.md - common configurations and versioning guidance
  - /docs/troubleshooting.md - common issues and solutions
- Test fixtures moved to /tests/ - test-document.md and placeholder.md now live alongside the test runner.

## What's Changed

* Fix/merge same line comments and update documentation by @dvdstelt in https://github.com/dvdstelt/hyperhawk/pull/9

**Full Changelog**: https://github.com/dvdstelt/hyperhawk/compare/v1.4.0...v1.5.0
