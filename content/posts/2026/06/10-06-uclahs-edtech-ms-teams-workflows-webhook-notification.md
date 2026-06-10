---
title: MS Teams Workflows Webhook Notification
date: 2026-06-10 06:54:53 +00:00
tags:
  - uclahs-edtech
  - GitHub Actions
draft: false
repo: https://github.com/uclahs-edtech/ms-teams-workflows-webhook-notification
marketplace: https://github.com/marketplace/actions/ms-teams-workflows-webhook-notification
version: v1.0.2
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/uclahs-edtech/ms-teams-workflows-webhook-notification** to version **v1.0.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ms-teams-workflows-webhook-notification) to find the latest changes.

## What's Changed

# Changelog

All notable changes to this project will be documented in this file.
Format follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).

## [1.0.2] - 2026-06-09

### Changed
- Replace free-form `color` input with `type` (`info`, `warning`, `fail`, `success`) for consistent notification styling.
- Make Adaptive Card notification type visually noticeable with a typed header band and status label.
- Render generated job details as structured `Change log`, `Status`, and `Time` facts instead of a monospace text block.

## [1.0.1] - 2026-06-09

### Changed
- Convert sparse GitHub job payload details into a changelog, status, and timestamp summary.
- Add `timezone` input for generated notification timestamps.

## [1.0.0] - 2026-06-01

### Added
- Initial release of MS Teams Workflow Webhook Notification action.
- Adaptive Card support (new Power Automate Workflow webhook format).
- Legacy Message Card support as fallback (`card-type: message`).
- Automatic GitHub context facts (repo, ref, actor, workflow, run number).
- Optional action button with HTTPS-only URL validation.
- SSRF prevention via Azure domain allowlist.
- Webhook URL masking via `core.setSecret()`.
- Input sanitization and length limits for all text fields.
- `dry-run` mode for payload verification without sending.
- Request timeout (10 seconds) to prevent hanging workflows.


**Full Changelog**: https://github.com/uclahs-edtech/ms-teams-workflows-webhook-notification/compare/v1...v1.0.2
