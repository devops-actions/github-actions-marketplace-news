---
title: Pangolinfo Data Export
date: 2026-08-24 06:16:55 +00:00
tags:
  - Pangolin-spg
  - GitHub Actions
draft: false
repo: https://github.com/Pangolin-spg/pangolinfo-data-action
marketplace: https://github.com/marketplace/actions/pangolinfo-data-export
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
actionSummary: |
  This GitHub Action automates data export from Pangolinfo, a platform that provides structured data for Amazon products and AI Overview services. It supports four main products: Amazon Scraper, AI Overview SERP, Amazon Niche Data, and Amazon Alexa API. The action writes the response to a private-permission JSON file, which can be committed to a repository or retained as an artifact. Key features include retry mechanisms, logging of request details, and restrictions on API endpoints.
---


Version updated for **https://github.com/Pangolin-spg/pangolinfo-data-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pangolinfo-data-export) to find the latest changes.

## Action Summary

This GitHub Action automates data export from Pangolinfo, a platform that provides structured data for Amazon products and AI Overview services. It supports four main products: Amazon Scraper, AI Overview SERP, Amazon Niche Data, and Amazon Alexa API. The action writes the response to a private-permission JSON file, which can be committed to a repository or retained as an artifact. Key features include retry mechanisms, logging of request details, and restrictions on API endpoints.

## What's Changed

## Pangolinfo Data Export v1.0.0

Run repeatable Amazon and Google AI Overview research in GitHub Actions and retain the results as JSON artifacts.

### Supported products

- **Amazon Scraper API:** product detail, search, seller catalog, best sellers, new releases, and reviews
- **AI Overview SERP API:** AI answers, citations, organic results, and optional screenshots
- **Amazon Niche Data API:** demand, competition, click-share, and return-based niche filtering
- **Amazon Alexa for Shopping API:** recommendations, contextual answers, and follow-up questions

### Reliability and security

- Fixed Pangolinfo HTTPS endpoints with product-specific input validation
- Secret masking and no response bodies in workflow logs or Action outputs
- Safe relative output paths and owner-only file permissions
- Bounded retries for network failures, HTTP 429, and HTTP 5xx
- Optional provenance envelope with timestamp, endpoint, status, request ID, and attempt count
- Seven unit tests, lint, bundle consistency check, Dependabot, and zero known npm vulnerabilities

### Start here

See the [five-minute quickstart](https://github.com/Pangolin-spg/pangolinfo-data-action#five-minute-quickstart), [scheduled AI Overview example](https://github.com/Pangolin-spg/pangolinfo-data-action#scheduled-ai-overview-monitoring), and [product-specific examples](https://github.com/Pangolin-spg/pangolinfo-data-action/tree/main/examples).

**Full changelog:** https://github.com/Pangolin-spg/pangolinfo-data-action/blob/main/CHANGELOG.md

