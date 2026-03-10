---
title: Send email
date: 2026-03-10 22:04:45 +00:00
tags:
  - dawidd6
  - GitHub Actions
draft: false
repo: https://github.com/dawidd6/action-send-mail
marketplace: https://github.com/marketplace/actions/send-email
version: v12
dependentsNumber: "9,679"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/dawidd6/action-send-mail** to version **v12**.
- This action is used across all versions by **9,679** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/send-email) to find the latest changes.

## Action Summary

The "Send Mail GitHub Action" automates the process of sending emails to multiple recipients directly from a GitHub Actions workflow. It supports features such as plain text, HTML, or multipart email bodies, Markdown-to-HTML conversion, file attachments, and custom headers. This action simplifies email notifications for tasks like build results, alerts, or status updates, eliminating the need for manual email handling during CI/CD pipelines.

## Release notes

# Possible Breaking Change

`from` input now needs to be in one of those forms:
- `Plain Simple Name <user@example.com>`
- `user@example.com`

## What's Changed
* build(deps): bump minimatch from 3.1.3 to 3.1.5 by @dependabot[bot] in https://github.com/dawidd6/action-send-mail/pull/265
* Misc. fixes by @felfert in https://github.com/dawidd6/action-send-mail/pull/267
* build(deps): bump nodemailer from 8.0.1 to 8.0.2 by @dependabot[bot] in https://github.com/dawidd6/action-send-mail/pull/269
* node_modules: update by @dawidd6 in https://github.com/dawidd6/action-send-mail/pull/270

## New Contributors
* @felfert made their first contribution in https://github.com/dawidd6/action-send-mail/pull/267

**Full Changelog**: https://github.com/dawidd6/action-send-mail/compare/v11...v12
