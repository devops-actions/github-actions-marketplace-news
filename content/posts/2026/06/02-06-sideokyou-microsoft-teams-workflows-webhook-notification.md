---
title: Microsoft Teams Workflows Webhook Notification
date: 2026-06-02 06:50:11 +00:00
tags:
  - sideokyou
  - GitHub Actions
draft: false
repo: https://github.com/sideokyou/microsoft-teams-workflows-webhook-notification
marketplace: https://github.com/marketplace/actions/microsoft-teams-workflows-webhook-notification
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/sideokyou/microsoft-teams-workflows-webhook-notification** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/microsoft-teams-workflows-webhook-notification) to find the latest changes.

## What's Changed

# Changelog

All notable changes to this project will be documented in this file.
Format follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).

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
