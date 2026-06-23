---
title: JaCoCo Report to PR Comment
date: 2026-06-23 06:53:00 +00:00
tags:
  - MoranaApps
  - GitHub Actions
draft: false
repo: https://github.com/MoranaApps/jacoco-report
marketplace: https://github.com/marketplace/actions/jacoco-report-to-pr-comment
version: v3.1.1
dependentsNumber: "8"
actionType: Composite
---


Version updated for **https://github.com/MoranaApps/jacoco-report** to version **v3.1.1**.

- This action is used across all versions by **8** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/jacoco-report-to-pr-comment) to find the latest changes.

## What's Changed

### Bugfixes 🛠
- #201 _Bug: Overall Coverage Calculated from Only Changed Reports_ developed by @miroslavpojer in #202
  - Fixed overall coverage calculation when using multiple report groups with skip-unchanged
  - Overall coverage now includes all reports, not just reports with PR changes
  - Example: 4 reports (80%, 90%, 70%, 60%) → Overall = 75% (was 80%)
  - Unchanged reports hidden from comment rows but counted in overall metrics
  - Applies to projects using skip-unchanged with multiple report groups
  - Single report groups unaffected
  - All tests passing with maintained coverage
- #203 _Issue: Changed Files with 0 Coverage Incorrectly Pass Per-File Threshold_ developed by @miroslavpojer in #204
  - Changed files with 0% coverage for the selected metric now correctly fail per-file thresholds greater than 0%
  - Improved transparency in PR comment tables: files with no coverage data are properly evaluated
  - Fixed regression where Main.scala with 0% instruction coverage was incorrectly marked as passing 60% threshold
  - All changed files are now uniformly evaluated against per-file thresholds regardless of metric weight

### Infrastructure ⚙️
- PR: #199 _chore(deps): update actions/checkout action to v7_ developed by 
- PR: #200 _chore(deps): update python dependencies to v9.1.1_ developed by @renovate[bot]

#### Full Changelog
https://github.com/MoranaApps/jacoco-report/compare/v3.1.0...v3.1.1
