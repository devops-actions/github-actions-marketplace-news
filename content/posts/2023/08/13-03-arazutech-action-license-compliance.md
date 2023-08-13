---
title: License Compliance Checker
date: 2023-08-13 03:18:59 +00:00
tags:
  - arazutech
  - GitHub Actions
draft: false
repo: arazutech/action-license-compliance
marketplace: https://github.com/marketplace/actions/license-compliance-checker
version: v37
dependentsNumber: '?'
---


Version updated for **arazutech/action-license-compliance** to version **v37**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/license-compliance-checker) to find the latest changes.

## Release notes

# License Compliance Checker

This GitHub Action checks the licenses of dependencies in your project and can optionally send Slack notifications if restricted licenses are found. It supports both Node.js and Python runtimes.

## Features

- Check licenses of project dependencies against an allow list and a block list using regular expressions.
- Optionally send notifications to Slack if restricted licenses are detected.
- Supports both Node.js and Python runtimes.

## Inputs

- `slack_webhook_url`: Slack webhook URL for sending notifications (optional).
- `allow_list`: Regex pattern for allowed licenses (default: MIT, BSD, ISC, Apache, CC0, buyer-app).
- `block_list`: Regex pattern for blocked licenses (default: GPL, MPL, LGPL).
- `runtime`: Project runtime (default: python). Choose between 'python' and 'node'.

## Usage

```yaml
uses: arazutech/action-license-compliance@v35
with:
  slack_webhook_url: ${{ secrets.SLACK_WEBHOOK_URL }}
  allow_list: '(MIT|BSD|ISC|Apache|CC0|buyer-app)'
  block_list: '(GPL|MPL|LGPL)'
  runtime: "python"
```

Note: This action assumes that you have a 'requirements.txt' file for Python or a 'package.json' file for Node.js projects to check dependencies against.
