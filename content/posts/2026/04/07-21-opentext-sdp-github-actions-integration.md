---
title: SDP CI Integration
date: 2026-04-07 21:55:33 +00:00
tags:
  - opentext
  - GitHub Actions
draft: false
repo: https://github.com/opentext/sdp-github-actions-integration
marketplace: https://github.com/marketplace/actions/sdp-ci-integration
version: v26.2.0
dependentsNumber: "1"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/opentext/sdp-github-actions-integration** to version **v26.2.0**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sdp-ci-integration) to find the latest changes.

## Action Summary

This GitHub Action enables seamless integration between GitHub and OpenText's Core Software Delivery Platform/Software Delivery Management for CI/CD workflows. It automates the synchronization of GitHub workflow events, pull request activities, and test result data (e.g., JUnit or Gherkin BDD) with the product to streamline software delivery processes. Key capabilities include monitoring workflows, reflecting updates in the product, and enhancing collaboration and traceability across development pipelines.

## What's Changed

### v26.2.0

- Added support for `Custom Build Report`. The integration now automatically sets this URL for automated runs, allowing users to be redirected to the corresponding GitHub Actions job logs.
- Added support for `Custom Test Run Report URL` for automated runs triggered by GitHub Actions test runners. To configure this feature, navigate to the Test Runner in the product and set the corresponding field as described in the [documentation](https://admhelp.microfocus.com/octane/en/latest/Online/Content/UserGuide/how_pipelines_create.htm).
- Introduced CI server validation. A new column, `Integration status`, is now available in the product to display validation results for each CI server. To manually trigger validation, select a CI server from the grid and click the `Validate integration` button.
- Added support for branch names containing `/`.
- Fixed an issue where a new Automated Run was created for each test execution, preventing proper display of previous runs.
- Improved warning messages across the product to make them clearer and more meaningful for users.
