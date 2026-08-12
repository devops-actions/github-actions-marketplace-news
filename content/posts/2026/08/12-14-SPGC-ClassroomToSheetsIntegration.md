---
title: Classroom to sheets integration
date: 2026-08-12 14:46:38 +00:00
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
  This GitHub Action integrates with Google Sheets to automatically send assignment results from GitHub Classroom. It enables the following functionality:
  
  1. **Integration**: Automatically updates a Google Sheet with students' grades and additional information.
  2. **Task Results**: Supports multiple tasks by dynamically adjusting column names based on task IDs specified in the workflow.
  3. **Column Management**: Handles the creation of new columns for tasks that are not yet present in the sheet.
  4. **Security**: Uses service account credentials to ensure secure access to the Google Sheets API.
  
  ## Key Capabilities
  - Automatically updates assignment results in a Google Sheet.
  - Supports multiple tasks by dynamically adjusting column names.
  - Creates new columns and rows as needed based on task IDs specified in the workflow.
  - Securely integrates with Google Sheets using service account credentials.
---


Version updated for **https://github.com/SPGC/ClassroomToSheetsIntegration** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/classroom-to-sheets-integration) to find the latest changes.

## Action Summary

This GitHub Action integrates with Google Sheets to automatically send assignment results from GitHub Classroom. It enables the following functionality:

1. **Integration**: Automatically updates a Google Sheet with students' grades and additional information.
2. **Task Results**: Supports multiple tasks by dynamically adjusting column names based on task IDs specified in the workflow.
3. **Column Management**: Handles the creation of new columns for tasks that are not yet present in the sheet.
4. **Security**: Uses service account credentials to ensure secure access to the Google Sheets API.

## Key Capabilities
- Automatically updates assignment results in a Google Sheet.
- Supports multiple tasks by dynamically adjusting column names.
- Creates new columns and rows as needed based on task IDs specified in the workflow.
- Securely integrates with Google Sheets using service account credentials.

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
