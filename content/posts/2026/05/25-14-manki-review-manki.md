---
title: Manki Review
date: 2026-05-25 14:37:39 +00:00
tags:
  - manki-review
  - GitHub Actions
draft: false
repo: https://github.com/manki-review/manki
marketplace: https://github.com/marketplace/actions/manki-review
version: v5.3.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/manki-review/manki** to version **v5.3.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/manki-review) to find the latest changes.

## Action Summary

Manki is a self-hosted GitHub Action that provides adaptive AI-powered code reviews tailored to your repository and team conventions. It automates the code review process by dynamically determining the number of reviewers based on pull request complexity, identifying and filtering repeated or irrelevant findings, and learning from team feedback to refine its reviews over time. Key features include inline comments with severity classifications, conversational commands for clarification or customization, and the ability to self-learn and retain team-specific coding standards.

## What's Changed

## What's Changed
* fix: retire threadless priors when no review threads are open by @xdustinface in https://github.com/manki-review/manki/pull/851
* feat: thread `interRoundDiff` into `runReviewerAgent` (plumbing) by @xdustinface in https://github.com/manki-review/manki/pull/853
* feat: use inter-round delta as reviewer diff on follow-up rounds by @xdustinface in https://github.com/manki-review/manki/pull/854
* feat: enrich planner with round/delta/pinned-team context on follow-up rounds by @xdustinface in https://github.com/manki-review/manki/pull/855
* chore: stamp CHANGELOG for v5.3.0 release by @xdustinface in https://github.com/manki-review/manki/pull/857


**Full Changelog**: https://github.com/manki-review/manki/compare/v5.2.0...v5.3.0
