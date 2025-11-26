---
title: Slack Notify node edition
date: 2025-11-26 13:11:05 +00:00
tags:
  - tainakanchu
  - GitHub Actions
draft: false
repo: https://github.com/tainakanchu/action-slack-notify
marketplace: https://github.com/marketplace/actions/slack-notify-node-edition
version: v3.0.0
dependentsNumber: "?"
---


Version updated for **https://github.com/tainakanchu/action-slack-notify** to version **v3.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/slack-notify-node-edition) to find the latest changes.

## Release notes

## 🚀 v3.0.0 — Initial Release (Node.js Rewrite, ubuntu-slim Compatible)

This is the initial release of **action-slack-notify**, a fully Node.js–based reimplementation of the original [`[rtCamp/action-slack-notify](https://github.com/rtCamp/action-slack-notify)`](https://github.com/rtCamp/action-slack-notify).

The original rtCamp action runs a Go binary inside a Docker container.
However, newer GitHub-hosted runners such as **`ubuntu-slim`** **do not support Docker** because they execute workflows in a containerized, restricted environment.
As a result, the upstream action cannot be used on these lightweight runners.

This project solves that problem by providing a **Docker-free JavaScript action that runs natively in the Node 20 runtime**, making it compatible with ubuntu-slim and other environments where Docker is unavailable.

### ✨ Highlights

* Rewritten entirely in **Node.js** — no Docker required
* Works on **ubuntu-slim**, container-restricted runners, and self-hosted runners without Docker
* Drop-in replacement for the most common usage of the original rtCamp action
* Faster startup and lower overhead compared to container-based actions
* Easier to extend and maintain as a pure JavaScript action

### 🔧 Usage

```yaml
- uses: tainakanchu/action-slack-notify@v3
  with:
    webhook_url: ${{ secrets.SLACK_WEBHOOK_URL }}
    message: "Deployment succeeded!"
```

---

必要なら "migration guide from rtCamp/action-slack-notify" の文章も作れます。
