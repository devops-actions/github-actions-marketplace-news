---
title: GitHub Actions Dependency Submission
date: 2026-01-08 05:31:40 +00:00
tags:
  - jessehouwing
  - GitHub Actions
draft: false
repo: https://github.com/jessehouwing/actions-dependency-submission
marketplace: https://github.com/marketplace/actions/github-actions-dependency-submission
version: v1.0.4
dependentsNumber: "32"
---


Version updated for **https://github.com/jessehouwing/actions-dependency-submission** to version **v1.0.4**.
- This action is used across all versions by **32** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/github-actions-dependency-submission) to find the latest changes.

## Action Summary

The "GitHub Actions Dependency Submission" is a GitHub Action designed to automate the submission of action dependencies from a repository's workflows to GitHub's Dependency Graph. It scans workflow files, composite actions, and callable workflows to identify dependencies, including forked and nested ones, ensuring comprehensive dependency tracking for security advisories. This action enhances visibility into dependencies, supports custom scanning paths and patterns, and integrates seamlessly with GitHub's API and Dependency Graph.

## Release notes

* Fixes a bug with reporting wildcard versions, which would retain the `v` prefix.

**Full Changelog**: https://github.com/jessehouwing/actions-dependency-submission/compare/v1...v1.0.4
