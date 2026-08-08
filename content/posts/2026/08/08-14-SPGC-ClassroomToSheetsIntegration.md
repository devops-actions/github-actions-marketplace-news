---
title: Classroom to sheets integration
date: 2026-08-08 14:25:00 +00:00
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
  This GitHub Action automates the process of sending assignment results from GitHub Classroom to Google Sheets. It uses Google Sheets API credentials stored as secrets and integrates with the `classroom-resources/autograding-command-grader@v1` grader to fetch task results. The action automatically updates or creates necessary columns and rows in the Google sheet based on student names and task results, making it easy to track grading progress across a class.
---


Version updated for **https://github.com/SPGC/ClassroomToSheetsIntegration** to version **v0.1.0marketplace**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/classroom-to-sheets-integration) to find the latest changes.

## Action Summary

This GitHub Action automates the process of sending assignment results from GitHub Classroom to Google Sheets. It uses Google Sheets API credentials stored as secrets and integrates with the `classroom-resources/autograding-command-grader@v1` grader to fetch task results. The action automatically updates or creates necessary columns and rows in the Google sheet based on student names and task results, making it easy to track grading progress across a class.

## What's Changed

First working version with basic functionality
