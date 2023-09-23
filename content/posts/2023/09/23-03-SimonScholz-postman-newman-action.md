---
title: Newman/Postman action with different outputs
date: 2023-09-23 03:10:26 +00:00
tags:
  - SimonScholz
  - GitHub Actions
draft: false
repo: SimonScholz/postman-newman-action
marketplace: https://github.com/marketplace/actions/newman-postman-action-with-different-outputs
version: v1.0.0
dependentsNumber: "1"
---


Version updated for **SimonScholz/postman-newman-action** to version **v1.0.0**.
- This publisher is shown as erified by GitHub.
- This action is used across all versions by **1** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/newman-postman-action-with-different-outputs) to find the latest changes.

## Release notes

Run newman/postman collections via GitHub actions using newman 6.0.0 and newman run summary as action output for further notifications.

First of all, thanks a lot to the users [@anthonyvscode](https://github.com/anthonyvscode/newman-action) and [@matt-ball](https://github.com/matt-ball/newman-action) for creating their newman-actions, which I took as reference for this action.
What I try to accomplish with this new action is to have the best of both worlds (@anthonyvscode's + @matt-ball`s actions) + more up to date versions of dependencies.

- Making use of all available NewmanRunOptions as input
- Using node 20 instead of node 12
- Use a newer version of the newman library (6.0.0)
- Set the summary of the newman run as output, so that followup actions can use the summary, e.g., for more sophisticated notifications.

This action can also populate special summaries of the newman runs to the `$GITHUB_OUTPUT`, to reuse these summaries in follow up steps of the github action run.
One example is the `outputGoogleCardV2` output property, which is capable of formatting the output in a manner, which is understood by the [google-chat-action](https://github.com/SimonScholz/google-chat-action) GitHub action --> [sending-a-summary-card-v2-to-a-google-chat](https://github.com/SimonScholz/postman-newman-action#sending-a-summary-card-v2-to-a-google-chat).

If I find time I'd also intend to include sending notifications about the run for popular messengers.
