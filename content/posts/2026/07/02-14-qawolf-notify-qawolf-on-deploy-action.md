---
title: Notify QA Wolf on Deploy
date: 2026-07-02 14:52:23 +00:00
tags:
  - qawolf
  - GitHub Actions
draft: false
repo: https://github.com/qawolf/notify-qawolf-on-deploy-action
marketplace: https://github.com/marketplace/actions/notify-qa-wolf-on-deploy
version: v2.0.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/qawolf/notify-qawolf-on-deploy-action** to version **v2.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/notify-qa-wolf-on-deploy) to find the latest changes.

## What's Changed

## v2.0.1

- Fix the `ephemeral-environment` input being ignored. Ephemeral deployments are now notified as ephemeral instead of as a regular GitHub deployment, and `deployment-url` is required when `ephemeral-environment` is `true`.

## v2.0.0

- The action now runs on Node 24.

## v1.2.1

- Allow `ephemeral-environment` as a valid input param

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

