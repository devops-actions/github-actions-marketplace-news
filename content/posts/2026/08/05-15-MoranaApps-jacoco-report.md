---
title: JaCoCo Report to PR Comment
date: 2026-08-05 15:04:52 +00:00
tags:
  - MoranaApps
  - GitHub Actions
draft: false
repo: https://github.com/MoranaApps/jacoco-report
marketplace: https://github.com/marketplace/actions/jacoco-report-to-pr-comment
version: v3.1.2
dependentsNumber: "9"
actionType: Composite
actionSummary: |
  This GitHub Action automates the publication of JaCoCo coverage reports as comments in pull requests, solving the problem of manually reviewing coverage numbers by hunting through CI logs. It provides key capabilities such as global and per-group thresholds, baseline comparison, flexible comment levels, and skip-unchanged filter.
---


Version updated for **https://github.com/MoranaApps/jacoco-report** to version **v3.1.2**.

- This action is used across all versions by **9** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/jacoco-report-to-pr-comment) to find the latest changes.

## Action Summary

This GitHub Action automates the publication of JaCoCo coverage reports as comments in pull requests, solving the problem of manually reviewing coverage numbers by hunting through CI logs. It provides key capabilities such as global and per-group thresholds, baseline comparison, flexible comment levels, and skip-unchanged filter.

## What's Changed

### Bugfixes 🛠
- #203 _Issue: Changed Files with 0 Coverage Incorrectly Pass Per-File Threshold_ developed by @miroslavpojer in #204
  - Changed files with 0% coverage for the selected metric now correctly fail per-file thresholds greater than 0%
  - Improved transparency in PR comment tables: files with no coverage data are properly evaluated
  - Fixed regression where Main.scala with 0% instruction coverage was incorrectly marked as passing 60% threshold
  - All changed files are now uniformly evaluated against per-file thresholds regardless of metric weight
- Bug: #211 _Bug report content_ developed by @miroslavpojer in #212
  - Fixed: `evaluate-unchanged: false` now correctly excludes reports and report groups with no changed files from all pass/fail evaluation (violations, overall threshold, changed-files threshold, per-group status) instead of only hiding them from the PR comment.

### Infrastructure ⚙️
- PR: #205 _chore(deps): update actions/setup-python action to v6.3.0_ developed by @renovate[bot]
- PR: #206 _chore(deps): update dependency mypy to v2.2.0_ developed by @renovate[bot]
- PR: #207 _chore(deps): update lycheeverse/lychee-action action to v2.9.0_ developed by @renovate[bot]
- PR: #208 _chore(deps): update python dependencies_ developed by @renovate[bot]
- PR: #209 _chore(deps): update actions/setup-python action to v7_ developed by @renovate[bot]
- PR: #210 _chore(deps): update actions/checkout action to v7.0.1_ developed by @renovate[bot]

#### Full Changelog
https://github.com/MoranaApps/jacoco-report/compare/v3.1.1...v3.1.2
