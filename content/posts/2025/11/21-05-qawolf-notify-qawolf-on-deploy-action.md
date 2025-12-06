---
title: Notify QA Wolf on Deploy
date: 2025-11-21 05:20:09 +00:00
tags:
  - qawolf
  - GitHub Actions
draft: false
repo: https://github.com/qawolf/notify-qawolf-on-deploy-action
marketplace: https://github.com/marketplace/actions/notify-qa-wolf-on-deploy
version: v1.2.0
dependentsNumber: "?"
---


Version updated for **https://github.com/qawolf/notify-qawolf-on-deploy-action** to version **v1.2.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/notify-qa-wolf-on-deploy) to find the latest changes.

## Release notes

## v1.2.0

- Don't guess a recent PR number based on SHA for non-PR events

## v1.1.5

- Allow `pull-request-number` as a valid input param

## v1.1.4

- Fix a problem where the `sha` passed in via `merge_group` events was wrong, causing commit checks to never complete

## v1.1.3

- Update README.md to include `deployment_type` examples

## v1.1.2

- Correct code sample in README where `GITHUB_TOKEN` is being passed as a `secrets` instead of an `env`

## v1.1.1

- Improve logging to facilitate debugging

## v1.1.0

- Expose an `eventId` on errors
- Output the `environmentId` on `attemptNotifyDeploy`

## v1.0.4

- Extract information from Github Event and send it to `attemptNotifyDeploy`

## v1.0.3

- Add `qawolf-base-url` optional input

## v1.0.2

- Fix action name on documentation

## v1.0.1

- Fix build problem and add branding

## v1.0.0

- Initial version

