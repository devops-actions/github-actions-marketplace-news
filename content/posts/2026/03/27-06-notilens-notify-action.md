---
title: NotiLens Notify
date: 2026-03-27 06:15:14 +00:00
tags:
  - notilens
  - GitHub Actions
draft: false
repo: https://github.com/notilens/notify-action
marketplace: https://github.com/marketplace/actions/notilens-notify
version: v1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/notilens/notify-action** to version **v1**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/notilens-notify) to find the latest changes.

## Action Summary

The **NotiLens Notify Action** enables automated notifications to the NotiLens platform directly from GitHub Actions workflows. It helps developers stay informed about workflow events, such as build successes, failures, deployments, or custom tasks, by sending real-time alerts to their devices. Key capabilities include customizable event types, detailed metadata integration, and support for attaching URLs, tags, and images to notifications.

## Release notes

## NotiLens Notify Action

Send notifications to your NotiLens app directly from GitHub Actions workflows.

### Features
- Notify on build success, failure, timeout, or cancellation
- Supports all NotiLens events: `task.*`, `ai.*`, `input.*`, and custom `emit`
- Auto-links to the workflow run URL
- Auto-includes GitHub context — workflow, repo, branch, commit, actor, trigger
- Silent fail — never breaks your workflow if NotiLens is unreachable
- Zero dependencies — uses Node.js built-ins only

### Usage

```yaml
- uses: notilens/notify-action@v1
  with:
    token:   ${{ secrets.NOTILENS_TOKEN }}
    secret:  ${{ secrets.NOTILENS_SECRET }}
    agent:   my-ci
    event:   task.completed
    message: Build passed
Setup
Get your token and secret from [notilens.com](https://www.notilens.com/)
Add NOTILENS_TOKEN and NOTILENS_SECRET to your repo secrets
Add the step to your workflow
