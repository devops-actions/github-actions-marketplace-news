---
title: ECS Exec
date: 2026-07-24 19:03:58 +00:00
tags:
  - risk3sixty
  - GitHub Actions
draft: false
repo: https://github.com/risk3sixty/ecs-exec
marketplace: https://github.com/marketplace/actions/ecs-exec
version: v2.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action allows developers to execute a command in the specified ECS Fargate Service. It automates database migrations by running scripts directly within the service containers, reducing the need for manual intervention and improving efficiency. The action handles multiple container services by requiring a specific container name when necessary, ensuring consistent execution across all tasks within the service.
---


Version updated for **https://github.com/risk3sixty/ecs-exec** to version **v2.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ecs-exec) to find the latest changes.

## Action Summary

This GitHub Action allows developers to execute a command in the specified ECS Fargate Service. It automates database migrations by running scripts directly within the service containers, reducing the need for manual intervention and improving efficiency. The action handles multiple container services by requiring a specific container name when necessary, ensuring consistent execution across all tasks within the service.

## What's Changed

container_name input (optional) → passed to ExecuteCommandCommand.container. Backward-compatible; omitting it keeps today's behavior.

desiredStatus: RUNNING filter on ListTasks + explicit error if no running task (previously could grab a stopped/undefined task).

Exit-code detection — wraps the command so it echoes __ECS_EXEC_EXIT__=$? and scans the streamed output; the step now fails on a non-zero exit or a dropped session. This closes the silent-failure hole the raw CLI approach also had.
