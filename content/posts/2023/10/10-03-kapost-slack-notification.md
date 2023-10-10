---
title: kap-slack-notification
date: 2023-10-10 03:09:05 +00:00
tags:
  - kapost
  - GitHub Actions
draft: false
repo: kapost/slack-notification
marketplace: https://github.com/marketplace/actions/kap-slack-notification
version: v3
dependentsNumber: "2"
---


Version updated for **kapost/slack-notification** to version **v3**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **2** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/kap-slack-notification) to find the latest changes.

## Release notes

Added support for individual webhook urls. Slack has deprecated the Incoming WebHook Custom Integration. As such, Apps are to be used which require individual and specific webhook urls for each user and channel. This version accommodates this by adding the `slack_url` argument in the user mapping yaml.
