---
title: Email Notifier Action
date: 2026-04-05 22:00:02 +00:00
tags:
  - peekaboo5149
  - GitHub Actions
draft: false
repo: https://github.com/peekaboo5149/email-notifier-action
marketplace: https://github.com/marketplace/actions/email-notifier-action
version: v0.0.2
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/peekaboo5149/email-notifier-action** to version **v0.0.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/email-notifier-action) to find the latest changes.

## Action Summary

The Email Notifier Action is a GitHub Action designed to automate the process of sending customized email notifications via any SMTP provider. It supports HTML email templates with variable substitution, embedded CSS styling, and multiple recipients, making it ideal for dynamic and visually appealing communication during CI/CD workflows. The action also ensures secure handling of credentials through GitHub Secrets and includes a dry-run mode for testing templates without sending actual emails.

## What's Changed

## What's Changed

This release fixes the action description to meet GitHub Marketplace requirements (under 125 characters).

### Fixed
- Shortened `action.yml` description from multi-line to single line (74 characters)

### Features (from v0.0.1)
- SMTP email delivery via nodemailer
- HTML template support with variable substitution
- Dry-run mode for testing
- Comprehensive error handling

### Required Secrets
- `MAILER_SEND_FROM` - Sender email address
- `MAILER_SEND_TO` - Recipient email address(es)
- `SMTP_HOST`, `SMTP_PORT`, `SMTP_USER`, `SMTP_PASS`, `SMTP_SECURE`

**Full Changelog**: https://github.com/peekaboo5149/email-notifier-action/compare/v0.0.1...v0.0.2
