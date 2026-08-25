---
title: Falsifying Swarm Orchestrator
date: 2026-08-25 06:06:34 +00:00
tags:
  - moonrunnerkc
  - GitHub Actions
draft: false
repo: https://github.com/moonrunnerkc/swarm-orchestrator
marketplace: https://github.com/marketplace/actions/falsifying-swarm-orchestrator
version: v13.1.9
dependentsNumber: "0"
actionType: Docker
actionSummary: |
  This GitHub Action automates the process of orchestrating tasks within a Git workspace. It uses machine-captured evidence to verify claims about task execution and record every tool call. Key capabilities include planning tasks, tracking file modifications, running gates to validate the integrity of the work, and exporting signed, hash-chained bundles for verification by anyone without installing the tool.
---


Version updated for **https://github.com/moonrunnerkc/swarm-orchestrator** to version **v13.1.9**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/falsifying-swarm-orchestrator) to find the latest changes.

## Action Summary

This GitHub Action automates the process of orchestrating tasks within a Git workspace. It uses machine-captured evidence to verify claims about task execution and record every tool call. Key capabilities include planning tasks, tracking file modifications, running gates to validate the integrity of the work, and exporting signed, hash-chained bundles for verification by anyone without installing the tool.

## What's Changed

    npm install -g swarm-orchestrator

A line that says the run is alive and what it is doing: a spinner that turns, the current activity, how long it has been going, and while the model is talking, the tail of what it is saying.

```
⠙ thinking, step 2  5s   I don't see calculator.js in the root directory
⠹ shell npm test  12s
```

Nothing on the screen moved before this. The model's text was already being streamed and thrown away; it is handed on now, one line of it.
