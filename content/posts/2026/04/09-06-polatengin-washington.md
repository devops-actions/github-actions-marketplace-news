---
title: Bicep Cost Estimator
date: 2026-04-09 06:08:12 +00:00
tags:
  - polatengin
  - GitHub Actions
draft: false
repo: https://github.com/polatengin/washington
marketplace: https://github.com/marketplace/actions/bicep-cost-estimator
version: v0.1.2
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/polatengin/washington** to version **v0.1.2**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/bicep-cost-estimator) to find the latest changes.

## Action Summary

The *Bicep Cost Estimator* GitHub Action automates the process of estimating monthly Azure costs by analyzing Bicep and ARM templates before deployment. It compiles templates, extracts resource details, queries the Azure Retail Prices API, and generates cost estimates in various formats (e.g., JSON, CSV, Markdown). This tool helps developers and teams integrate cost estimation into CI workflows, enabling proactive budgeting and cost management for Azure deployments.

## What's Changed

## Changes

This release includes the following commits:

- feat: update Dockerfile.dockerignore to exclude additional build artifacts and dependencies
- feat: add API Management service, Application Gateway, CDN profile, and PostgreSQL flexible server configurations to Bicep fixtures
- feat: add PostgreSQL flexible server configuration to Bicep fixtures
- feat: add CDN profile configuration to Bicep fixtures
- feat: add application gateway configuration to Bicep fixtures
- feat: add api management service configuration to fixtures
- fix: remove unnecessary empty lines in render functions for cleaner output
- fix: remove padding from playground button for improved layout
- fix: improve error message formatting for cost threshold check
- fix: ensure cost threshold check continues on error
- fix: remove appearance property for consistent styling
- fix: add type annotations to functions
- fix: update Makefile to remove unused targets and enhance terminal logo rendering in generate-plain-text script
- fix: add function to strip unsupported terminal sequences and sanitize line input in rendering
- fix: refactor renderBrowseScreen into getBrowseLayout and optimize page line loading
- fix: update render functions to include 'bicep cost estimator' in navigation segments
- fix: enhance text clipping and padding functions to handle ANSI sequences correctly
- fix: add SSH host key management in deployment workflow and normalize host key handling
- fix: remove redundant step for showing deployed revision
- fix: simplify renderBrowseScreen and remove unused key navigation shortcuts
