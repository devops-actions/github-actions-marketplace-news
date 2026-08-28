---
title: Classroom to sheets integration
date: 2026-08-28 17:45:38 +00:00
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
  This GitHub Action integrates Google Sheets with GitHub Classroom to automatically update assignment results. It requires setting up Google Cloud credentials and sharing access, then configuring a secret in your repository to use the integration. The action supports automated grading of tasks in GitHub Actions workflows and updates the corresponding columns in the specified Google Sheet.
---


Version updated for **https://github.com/SPGC/ClassroomToSheetsIntegration** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/classroom-to-sheets-integration) to find the latest changes.

## Action Summary

This GitHub Action integrates Google Sheets with GitHub Classroom to automatically update assignment results. It requires setting up Google Cloud credentials and sharing access, then configuring a secret in your repository to use the integration. The action supports automated grading of tasks in GitHub Actions workflows and updates the corresponding columns in the specified Google Sheet.

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
