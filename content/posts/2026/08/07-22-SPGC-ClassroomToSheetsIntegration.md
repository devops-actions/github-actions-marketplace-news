---
title: Classroom to sheets integration
date: 2026-08-07 22:29:53 +00:00
tags:
  - SPGC
  - GitHub Actions
draft: false
repo: https://github.com/SPGC/ClassroomToSheetsIntegration
marketplace: https://github.com/marketplace/actions/classroom-to-sheets-integration
version: v0.1.0
dependentsNumber: "?"
actionType: Docker
actionSummary: |
  This GitHub Action automates the process of sending assignment results from Google Classroom to a Google Sheet. It integrates with the Google Sheets API to update specified columns and rows based on task results provided by other grader actions in the workflow. The action ensures that the sheet is properly structured and handles both existing and new students dynamically, making it easy to integrate into larger workflows for automated grading systems.
---


Version updated for **https://github.com/SPGC/ClassroomToSheetsIntegration** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/classroom-to-sheets-integration) to find the latest changes.

## Action Summary

This GitHub Action automates the process of sending assignment results from Google Classroom to a Google Sheet. It integrates with the Google Sheets API to update specified columns and rows based on task results provided by other grader actions in the workflow. The action ensures that the sheet is properly structured and handles both existing and new students dynamically, making it easy to integrate into larger workflows for automated grading systems.

## What's Changed

- Updated comments (bf17880)
- Updated .dockerignore (498a6f7)
- Updated readme (bbb6b5a)
- Changed dockerfile to docker pull (8c8584b)
- Changed dockerfile to docker pull (23fa131)
- Fixed inputs (844c583)
- Merge pull request #5 from SPGC/using-result-base64-string (042d99f)
- Fixed input name (92dd201)
- Merge pull request #4 from SPGC/using-result-base64-string (79dad97)
- Code cleanup and fix bug with empty env variables (b474731)
