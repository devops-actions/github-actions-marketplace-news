---
title: VICE Security Audit
date: 2026-04-08 22:07:30 +00:00
tags:
  - Webba-Creative-Technologies
  - GitHub Actions
draft: false
repo: https://github.com/Webba-Creative-Technologies/vice
marketplace: https://github.com/marketplace/actions/vice-security-audit
version: v3.1.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/Webba-Creative-Technologies/vice** to version **v3.1.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vice-security-audit) to find the latest changes.

## Action Summary

The VICE GitHub Action automates security auditing for web applications by running vulnerability scans on every pull request and push. It provides both remote (black-box) and local (white-box) assessments, analyzing your codebase, configurations, and dependencies to identify issues like SQL injections, XSS, and missing RLS rules. Key features include automated PR comments with security findings, live security badge updates, SARIF integration for GitHub Code Scanning, and workflow gating to prevent insecure code from merging.

## What's Changed

SARIF v2.1.0 output for native GitHub Code Scanning integration. VICE findings now appear in the Security tab alongside CodeQL and Dependabot, and as inline annotations on pull request diffs.

  ## What's new

  - New `--format sarif` flag on the CLI for SARIF v2.1.0 output
  - New `--output <path>` flag to write the report to a file
  - Action automatically uploads SARIF to GitHub Code Scanning via `github/codeql-action/upload-sarif@v3`
  - New action input `upload-sarif` (default `true`) to control the upload
  - Optional `location` field on findings for precise file:line reporting

  ## Required permission

  Users of the action need to add `security-events: write` to their workflow permissions for the SARIF upload to work:

  ```yaml
  permissions:
     contents: write
     pull-requests: write
     security-events: write
  ```

  The README quickstart has been updated with this. If you don't want SARIF, set upload-sarif: false.

  ### Compatibility

  - The CLI is fully backwards compatible: vice audit . --ci --json continues to work exactly as before
  - Existing action users without security-events: write will see a warning in the logs but the action does not fail thanks to the graceful upload step
  - Self-audit score unchanged: 84/100 (B)
