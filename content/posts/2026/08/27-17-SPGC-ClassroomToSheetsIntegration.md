---
title: Classroom to sheets integration
date: 2026-08-27 17:40:00 +00:00
tags:
  - SPGC
  - GitHub Actions
draft: false
repo: https://github.com/SPGC/ClassroomToSheetsIntegration
marketplace: https://github.com/marketplace/actions/classroom-to-sheets-integration
version: v0.1.0marketplace
dependentsNumber: "?"
actionType: Docker
actionSummary: |
  This GitHub Action integrates Google Sheets with GitHub Classroom to automatically send assignment results. It requires setting up Google API credentials and sharing the sheet with the service account. The action uses Graders from the `classroom-resources/autograding-command-grader` repository to collect task results and updates them in a specified Google Sheet, creating columns as needed for each task or additional information provided by users.
---


Version updated for **https://github.com/SPGC/ClassroomToSheetsIntegration** to version **v0.1.0marketplace**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/classroom-to-sheets-integration) to find the latest changes.

## Action Summary

This GitHub Action integrates Google Sheets with GitHub Classroom to automatically send assignment results. It requires setting up Google API credentials and sharing the sheet with the service account. The action uses Graders from the `classroom-resources/autograding-command-grader` repository to collect task results and updates them in a specified Google Sheet, creating columns as needed for each task or additional information provided by users.

## What's Changed

First working version with basic functionality
