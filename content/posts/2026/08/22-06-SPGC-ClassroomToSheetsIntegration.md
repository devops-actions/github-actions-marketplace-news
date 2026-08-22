---
title: Classroom to sheets integration
date: 2026-08-22 06:05:28 +00:00
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
  This GitHub Action automatically sends assignment results from Google Classroom to a specified Google Sheet. It requires setting up Google Sheets API credentials and sharing the sheet with the service account email. Users can integrate this action into their GitHub workflows to update Google Sheets with task results. The action supports automatic column creation based on task names, handling missing students by adding new rows, and updating existing rows with new scores.
---


Version updated for **https://github.com/SPGC/ClassroomToSheetsIntegration** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/classroom-to-sheets-integration) to find the latest changes.

## Action Summary

This GitHub Action automatically sends assignment results from Google Classroom to a specified Google Sheet. It requires setting up Google Sheets API credentials and sharing the sheet with the service account email. Users can integrate this action into their GitHub workflows to update Google Sheets with task results. The action supports automatic column creation based on task names, handling missing students by adding new rows, and updating existing rows with new scores.

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
