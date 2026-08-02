---
title: Classroom to sheets integration
date: 2026-08-02 21:13:03 +00:00
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
  This GitHub Action integrates with Google Sheets to automatically update assignment results from GitHub Classroom assignments. It requires setting up Google Cloud credentials and sharing the spreadsheet with the service account email. The action can be configured in a GitHub Actions workflow to send task results to a specified sheet using student names as identifiers. It supports multiple tasks and dynamically creates columns for each graded task, updating or adding them as needed.
---


Version updated for **https://github.com/SPGC/ClassroomToSheetsIntegration** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/classroom-to-sheets-integration) to find the latest changes.

## Action Summary

This GitHub Action integrates with Google Sheets to automatically update assignment results from GitHub Classroom assignments. It requires setting up Google Cloud credentials and sharing the spreadsheet with the service account email. The action can be configured in a GitHub Actions workflow to send task results to a specified sheet using student names as identifiers. It supports multiple tasks and dynamically creates columns for each graded task, updating or adding them as needed.

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
