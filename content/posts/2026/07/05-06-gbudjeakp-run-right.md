---
title: RunRight CI Resource Monitor
date: 2026-07-05 06:30:33 +00:00
tags:
  - gbudjeakp
  - GitHub Actions
draft: false
repo: https://github.com/gbudjeakp/run-right
marketplace: https://github.com/marketplace/actions/runright-ci-resource-monitor
version: v1.5.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/gbudjeakp/run-right** to version **v1.5.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/runright-ci-resource-monitor) to find the latest changes.

## What's Changed

## Release v1.5.0 - Email Notifications, Analytics Dashboard, Alerts UX

### New Features
- **Email notification destination** - SMTP support with demo fallback
- **Analytics dashboard** - Cost breakdown by repo/job/runner with trends
- **Search bars** for Alert Rules and Ownership tabs
- **SSO support** - SAML and OIDC authentication
- **API keys management**

### Backend
- EmailChannel adapter in notification package
- SMTP config via `RUNRIGHT_SMTP_*` environment variables
- Analytics API endpoints

### Frontend
- Email tab in Destinations with subject prefix and recipients
- Analytics page with charts and filters
- Improved alert rules filtering

### Docs
- Added CHANGELOG.md
- Updated comparison page with honest feature matrix
- Added SMTP environment variables to install docs

**Full Changelog**: https://github.com/gbudjeakp/run-right/compare/v1.2.3...v1.5.0
