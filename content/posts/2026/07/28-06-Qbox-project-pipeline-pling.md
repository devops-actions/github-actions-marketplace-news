---
title: Pipeline Pling
date: 2026-07-28 06:32:36 +00:00
tags:
  - Qbox-project
  - GitHub Actions
draft: false
repo: https://github.com/Qbox-project/pipeline-pling
marketplace: https://github.com/marketplace/actions/pipeline-pling
version: v1.5.0
dependentsNumber: "1"
actionType: Node
nodeVersion: 24
actionSummary: |
  Pipeline Pling is a GitHub Action that sends clear, customizable Discord notifications for pushes, pull requests, and issues. It automates the delivery of actionable information directly to developers' Discords. The action uses Discord Components V2 and includes features such as flexible routing, styling controls, privacy options, and automatic retry functionality for rate limits.
---


Version updated for **https://github.com/Qbox-project/pipeline-pling** to version **v1.5.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pipeline-pling) to find the latest changes.

## Action Summary

Pipeline Pling is a GitHub Action that sends clear, customizable Discord notifications for pushes, pull requests, and issues. It automates the delivery of actionable information directly to developers' Discords. The action uses Discord Components V2 and includes features such as flexible routing, styling controls, privacy options, and automatic retry functionality for rate limits.

## What's Changed

Pipeline Pling has always told you about pushes. Now it tells you about pull requests and issues too.

## Pull requests

<img src="https://raw.githubusercontent.com/Qbox-project/pipeline-pling/295956b/screenshots/pull-request-opened.png" width="540" alt="Discord card for an opened pull request">

You get a card when a pull request is opened, reopened, turned into a draft, marked ready for review, merged, or closed. It shows who opened it, which branch is going where, how big the change is, and the start of the description — enough to know whether you need to look at it, without leaving Discord.

Merged pull requests come through in purple, and the card tells you who merged it:

<img src="https://raw.githubusercontent.com/Qbox-project/pipeline-pling/295956b/screenshots/pull-request-merged.png" width="540" alt="Discord card for a merged pull request">

## Issues

<img src="https://raw.githubusercontent.com/Qbox-project/pipeline-pling/295956b/screenshots/issue-opened.png" width="540" alt="Discord card for an opened issue">

Same idea for issues, with the labels, assignees, milestone, and how many people have replied. New issues are green so a fresh bug report stands out.

When an issue is closed you also see how it ended, so "fixed" and "not doing this" don't look the same:

<img src="https://raw.githubusercontent.com/Qbox-project/pipeline-pling/295956b/screenshots/issue-not-planned.png" width="540" alt="Discord card for an issue closed as not planned">

## Turning it on

The action only sees what GitHub sends it, so add the two triggers to your workflow:

```yaml
on:
  push:
  pull_request_target:
    types: [opened, reopened, converted_to_draft, ready_for_review, closed]
  issues:
    types: [opened, reopened, closed]
```

That is the only change you need. Every new setting is optional and already set to a sensible default.

`pull_request_target` is there so notifications still work for pull requests from forks. Don't add a checkout step to this job — it never needs your code.

## If you want to tune it

A few of the things you can do now:

```yaml
with:
  webhook-url: ${{ secrets.DISCORD_WEBHOOK_URL }}

  # send pull requests and issues to their own channels
  pull-request-webhook-url: ${{ secrets.DISCORD_PR_WEBHOOK_URL }}
  issue-webhook-url: ${{ secrets.DISCORD_ISSUE_WEBHOOK_URL }}

  # skip drafts, and skip anything labelled no-discord
  pull-request-drafts: exclude
  issue-label-denylist: no-discord

  # keep sensitive work out of the channel entirely
  redact-labels: security,private

  # shorter cards
  body-max-length: 180
```

You can also pick which rows appear on a card, set your own colours per state or per label, borrow a GitHub label's colour for the accent, filter by target or source branch, and badge first-time contributors. It is all in the [README](https://github.com/Qbox-project/pipeline-pling#configuration).

## Also in this release

- Pushing a tag no longer sends a push notification.
- A bad `true` / `false` value in your workflow logs a warning instead of failing the whole job.
- Repository names containing "clyde" no longer break the webhook, since Discord refuses that word in usernames.
- Long descriptions no longer get cut in the middle of an emoji.

## Upgrading

If you use `@v1` there is nothing to do — you already have it. Pushes keep working exactly as before, and you will start seeing pull request and issue cards as soon as you add the triggers above.

**Full changelog:** https://github.com/Qbox-project/pipeline-pling/compare/v1.4.0...v1.5.0

