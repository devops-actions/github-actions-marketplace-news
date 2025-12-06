---
title: EventDock Webhook Health Check
date: 2025-12-06 21:00:59 +00:00
tags:
  - EventDock
  - GitHub Actions
draft: false
repo: https://github.com/EventDock/webhook-health-action
marketplace: https://github.com/marketplace/actions/eventdock-webhook-health-check
version: v1
dependentsNumber: "?"
---


Version updated for **https://github.com/EventDock/webhook-health-action** to version **v1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/eventdock-webhook-health-check) to find the latest changes.

## Release notes

## What this action does

The **EventDock Webhook Health Check** action validates the health of your webhook endpoints as part of your CI workflow.
It’s provided by [EventDock](https://eventdock.app/) — a platform for monitoring and improving webhook reliability.

It sends test events through your configured webhook URLs and reports on:

- ✅ Reachability of each endpoint
- ✅ HTTP status codes and failures
- ✅ Response time / latency
- ✅ Aggregated delivery statistics for your run

This helps you catch broken or misconfigured webhooks **before** they impact production integrations.

## Usage

```yaml
name: Webhook health check

on:
  workflow_dispatch:
  schedule:
    - cron: "0 * * * *" # optional

jobs:
  webhook-health:
    runs-on: ubuntu-latest
    steps:
      - name: Check webhook health
        uses: EventDock/webhook-health-action@v1
        with:
          api_key: ${{ secrets.EVENTDOCK_API_KEY }}
          endpoint_id: "your-endpoint-id"
          fail_on_error: true
````

> ℹ️ Make sure to store your `EVENTDOCK_API_KEY` as an encrypted repository secret.

## Key features

* 🔍 Validates webhook endpoint configuration directly from CI
* 📊 Summarizes delivery statistics for each run
* 🚨 Fails the job on unhealthy endpoints (configurable)
* 🧩 Designed to integrate with the EventDock platform for deeper analysis

