---
title: The Slack GitHub Action
date: 2026-07-16 06:28:14 +00:00
tags:
  - slackapi
  - GitHub Actions
draft: false
repo: https://github.com/slackapi/slack-github-action
marketplace: https://github.com/marketplace/actions/the-slack-github-action
version: v4.0.0
dependentsNumber: "26,858"
actionType: Node
nodeVersion: 24
actionSummary: |
  The Slack GitHub Action automates sending data to Slack and running commands, providing features for using webhooks, API methods, incoming webhooks, and Slack CLI commands with service tokens. It simplifies integration between GitHub workflows and Slack, enabling seamless communication and automation.
---


Version updated for **https://github.com/slackapi/slack-github-action** to version **v4.0.0**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **26,858** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/the-slack-github-action) to find the latest changes.

## Action Summary

The Slack GitHub Action automates sending data to Slack and running commands, providing features for using webhooks, API methods, incoming webhooks, and Slack CLI commands with service tokens. It simplifies integration between GitHub workflows and Slack, enabling seamless communication and automation.

## What's Changed

### Major Changes

- b1974f0: build: parse yaml with more strict multiline indentation rules

  Internal dependencies of [`js-yaml@v5`](https://github.com/nodeca/js-yaml/blob/master/CHANGELOG.md#500---2026-06-20) make YAML parsing more strict and compliant with the YAML specification. Indentation is now required for values that span multiple lines against the base value.

  See the YAML [line prefixes](https://yaml.org/spec/1.2.2/#63-line-prefixes) spec for the expected indentation rule:

  ```diff
    channel: "C0123"
    text: "first line

  - second line"
  +   second line"
  ```

### Patch Changes

- 654bb72: chore: provide global fetch proxied configurations with updates to web api and webhook packages


